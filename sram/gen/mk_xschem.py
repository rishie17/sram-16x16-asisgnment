#!/usr/bin/env python3
"""Xschem schematics (.sch + .sym) generated from cells/cells.sp and the sram256 netlist of gen_sram.py,
so the GUI schematics are the simulated circuit. Each size variant of a parameterised cell
(inv wn=.. wp=..) becomes its own cell, e.g. inv_wn0p84_wp1p68. Connections use net labels.
Also writes flat reference netlists (ref/<cell>.spice) for the netgen check, and a 6T testbench."""
import os, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(ROOT, "gen")); sys.path.insert(0, os.path.join(ROOT, "layout"))
os.environ.setdefault("SRAM_PDK_LIB", "/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice")
from gen_sram import netlist_core
from flatnet import subckts
OUT = os.path.join(ROOT, "xschem"); os.makedirs(os.path.join(OUT, "ref"), exist_ok=True)
S = subckts()
HDR = "v {xschem version=3.4.8RC file_version=1.2}\n"
PDK = {"n": "sky130_fd_pr/nfet_01v8.sym", "p": "sky130_fd_pr/pfet_01v8.sym"}
MOSPIN = {"n": {"d": (20, -30), "g": (-20, 0), "s": (20, 30), "b": (20, 0)},
          "p": {"d": (20, 30), "g": (-20, 0), "s": (20, -30), "b": (20, 0)}}
TWO = {"R": "res.sym", "L": "ind.sym", "C": "capa.sym", "D": "diode.sym"}

def fmt(v): return f"{float(v):g}".replace(".", "p")
def parse(line):
    t = line.split(); P = dict(x.split("=") for x in t if "=" in x); a = [x for x in t if "=" not in x]
    return t[0], a[1:-1], a[-1], P
def resolve(v, P): return P.get(v.strip("{}"), v) if v.startswith("{") else v
def variant(kind, P):
    """Name of the cell variant for subckt `kind` with instance params P (already numeric)."""
    full = dict(S[kind]["params"]); full.update(P)
    diff = {k: v for k, v in full.items() if float(v) != float(S[kind]["params"][k])}
    return kind + "".join(f"_{k}{fmt(v)}" for k, v in sorted(diff.items())), full

def mos(line, P):
    """Wrapper instance (nmos/pmos) -> (type, nets d g s b, W)."""
    _, nets, kind, ip = parse(line)
    return kind[0], nets, resolve(ip.get("w", {"nmos": "0.42", "pmos": "0.84"}[kind]), P)

def lab(x, y, net, i, right, L=40):
    """Short wire out of the pin, then a net label at its end (text points away from the device)."""
    xe = x + (L if right else -L)
    return (f"N {x} {y} {xe} {y} {{lab={net}}}\n"
            f"C {{lab_pin.sym}} {xe} {y} 0 {1 if right else 0} {{name=l{i} sig_type=std_logic lab={net}}}\n")

class Sch:
    def __init__(s): s.body = ""; s.n = 0; s.k = 0
    def slot(s, cols=5, dx=420, dy=220):
        x, y = 200 + (s.k % cols) * dx, (s.k // cols) * dy; s.k += 1; return x, y
    def lab(s, x, y, net, right, L=40): s.n += 1; s.body += lab(x, y, net, s.n, right, L)

done = {}
def build(kind, P):
    """Write <variant>.sch and .sym for subckt kind; returns variant name."""
    name, full = variant(kind, P)
    if name in done: return name
    sc = S[kind]; sch = Sch(); ports = sc["ports"]
    for i, p in enumerate(ports):
        sch.body += f"C {{iopin.sym}} -200 {i * 40} 0 0 {{name=p{i} lab={p}}}\n"
    code = []
    for j, l in enumerate(sc["body"]):
        t = l.split()
        if t[0][0] in TWO:                                 # passive: R, L, C or diode
            x, y = sch.slot(); val = t[3]
            attr = f"model={val} area=1" if t[0][0] == "D" else f"value={val}"
            sch.body += f"C {{{TWO[t[0][0]]}}} {x} {y} 0 0 {{name={t[0]} {attr}}}\n"
            sch.lab(x, y - 30, t[1], False); sch.lab(x, y + 30, t[2], True)
            if t[0][0] == "D": code.append(".model desd D(is=1e-14 cjo=0.2p rs=2)")
            continue
        iname, nets, sub, ip = parse(l); ip = {k: resolve(v, full) for k, v in ip.items()}
        x, y = sch.slot()
        if sub in ("nmos", "pmos"):
            ty, nn, w = mos(l, full)
            sch.body += f"C {{{PDK[ty]}}} {x} {y} 0 0 {{name=M{iname[1:]} L=0.15 W={w} nf=1 mult=1 model={ty}fet_01v8 spiceprefix=X}}\n"
            for pin, net in zip("dgsb", nn):
                px, py = MOSPIN[ty][pin]; sch.lab(x + px, y + py, net, pin != "g", 140 if pin == "b" else 60)
        else:
            v = build(sub, ip)
            sch.body += f"C {{{v}.sym}} {x} {y} 0 0 {{name={iname}}}\n"
            for i, net in enumerate(nets):
                px, py = pinxy(i); sch.lab(x + px, y + py, net, px > 0)
    for c in sorted(set(code)):
        sch.body += f"C {{code_shown.sym}} -200 {len(ports) * 40 + 60} 0 0 {{name=models only_toplevel=false value=\"{c}\"}}\n"
    title = f"T {{{name}: generated from cells.sp ({kind}{' ' + ' '.join(f'{k}={v}' for k, v in sorted(full.items())) if full else ''})}} -200 -120 0 0 0.5 0.5 {{}}\n"
    open(os.path.join(OUT, name + ".sch"), "w").write(HDR + "G {}\nK {}\nV {}\nS {}\nE {}\n" + title + sch.body)
    open(os.path.join(OUT, name + ".sym"), "w").write(symbol(name, ports))
    done[name] = (kind, full); return name

def pinxy(i):
    """Pin i of a generated symbol: even pins on the left, odd on the right, 20 apart."""
    return (-80 if i % 2 == 0 else 80), (i // 2) * 20 - 40

def symbol(name, ports):
    h = max(1, (len(ports) + 1) // 2) * 20 + 20
    s = HDR + f'G {{}}\nK {{type=subcircuit\nformat="@name @pinlist @symname"\ntemplate="name=x1"\n}}\nV {{}}\nS {{}}\nE {{}}\n'
    s += f"P 4 5 -60 -60 60 -60 60 {h - 60} -60 {h - 60} -60 -60 {{}}\n"
    for i, p in enumerate(ports):
        x, y = pinxy(i); xe = -60 if x < 0 else 60
        s += f"B 5 {x - 2.5} {y - 2.5} {x + 2.5} {y + 2.5} {{name={p} dir=inout sim_pinnumber={i + 1}}}\n"
        s += f"L 7 {x} {y} {xe} {y} {{}}\n"
        s += f"T {{{p}}} {xe + (4 if x < 0 else -4)} {y - 6} 0 {0 if x < 0 else 1} 0.2 0.2 {{}}\n"
    s += "T {@symname} -58 -80 0 0 0.25 0.25 {}\nT {@name} -58 " + str(h - 56) + " 0 0 0.25 0.25 {}\n"
    return s

def flat(kind, P, nets, pre, out):
    """Flat reference devices for netgen: real sky130 device lines, wrappers expanded."""
    sc = S[kind]; full = dict(sc["params"]); full.update(P); m = dict(zip(sc["ports"], nets))
    g = lambda n: m.get(n, pre + n)
    for l in sc["body"]:
        t = l.split()
        if t[0][0] in TWO: out.append(f"{t[0][0]}{pre.replace('.', '_')}{t[0]} {g(t[1])} {g(t[2])} {t[3]}" + (" area=1" if t[0][0] == "D" else "")); continue
        iname, nn, sub, ip = parse(l); ip = {k: resolve(v, full) for k, v in ip.items()}
        if sub in ("nmos", "pmos"):
            ty, d, w = mos(l, full)
            out.append(f"X{pre.replace('.', '_')}{iname} {' '.join(g(x) for x in d)} sky130_fd_pr__{ty}fet_01v8 L=0.15 W={w} nf=1 m=1")
        else: flat(sub, ip, [g(x) for x in nn], pre + iname + ".", out)

def top():
    """sram256: block-level schematic of the real top netlist (no wire caps)."""
    lines = [l for l in netlist_core(wire=False).splitlines() if l.startswith("X")]
    ports = "CLK ADDR RW DIN DOUT vdd vddio vss".split(); sch = Sch()
    for i, p in enumerate(ports):
        sch.body += f"C {{{'opin' if p == 'DOUT' else 'ipin' if p.isupper() else 'iopin'}.sym}} -200 {i * 40} 0 0 {{name=p{i} lab={p}}}\n"
    ref = []
    for l in lines:
        iname, nets, sub, ip = parse(l); v = build(sub, ip); x, y = sch.slot(cols=16, dx=320, dy=180)
        sch.body += f"C {{{v}.sym}} {x} {y} 0 0 {{name={iname}}}\n"
        for i, net in enumerate(nets):
            px, py = pinxy(i); sch.lab(x + px, y + py, net, px > 0)
        flat(sub, ip, nets, iname + ".", ref)
    t = "T {sram256: 256x1 SRAM top level, generated from gen_sram.py (same circuit as the simulations)} -200 -120 0 0 0.6 0.6 {}\n"
    open(os.path.join(OUT, "sram256.sch"), "w").write(HDR + "G {}\nK {}\nV {}\nS {}\nE {}\n" + t + sch.body)
    open(os.path.join(OUT, "sram256.sym"), "w").write(symbol("sram256", ports))
    open(os.path.join(OUT, "ref", "sram256.spice"), "w").write(f".subckt sram256 {' '.join(ports)}\n" + "\n".join(ref) + "\n.ends\n")

def tb():
    """6T bit-cell testbench: precharge, write 0, read, write 1, read. Runs from Xschem (Simulate) or batch."""
    b = build("bitcell", {}); p = build("precharge", {}); s = HDR + "G {}\nK {}\nV {}\nS {}\nE {}\n"
    s += "T {tb_bitcell: write 0, read, write 1, read on one 6T cell with precharge and 50 fF bitlines} -200 -160 0 0 0.5 0.5 {}\n"
    s += f"C {{{b}.sym}} 400 0 0 0 {{name=xcell}}\nC {{{p}.sym}} 400 -300 0 0 {{name=xpre}}\n"
    n = [0]
    def L(x, y, net, r=False): n[0] += 1; return lab(x, y, net, n[0], r)
    for i, net in enumerate(["bl", "blb", "wl", "vdd", "0"]): px, py = pinxy(i); s += L(400 + px, py, net, px > 0)
    for i, net in enumerate(["bl", "blb", "pcb", "vdd"]): px, py = pinxy(i); s += L(400 + px, -300 + py, net, px > 0)
    for k, (nm, net, gate) in enumerate([("Mw0", "bl", "w0"), ("Mw1", "blb", "w1")]):
        x = 700 + 200 * k; s += f"C {{{PDK['n']}}} {x} 0 0 0 {{name={nm} L=0.15 W=1.68 nf=1 mult=1 model=nfet_01v8 spiceprefix=X}}\n"
        s += L(x + 20, -30, net, True) + L(x - 20, 0, gate) + L(x + 20, 30, "0", True) + L(x + 20, 0, "0", True)
    for k, net in enumerate(["bl", "blb"]):
        x = 1200 + 120 * k; s += f"C {{capa.sym}} {x} 0 0 0 {{name=C{net} value=50f}}\n" + L(x, -30, net) + L(x, 30, "0", True)
    src = {"vdd": "1.8", "pcb": "PWL(0 0 1n 0 1.1n 1.8 3n 1.8 3.1n 0 4n 0 4.1n 1.8 6n 1.8 6.1n 0 7n 0 7.1n 1.8 9n 1.8 9.1n 0 10n 0 10.1n 1.8 12n 1.8 12.1n 0)",
           "wl": "PWL(0 0 1.2n 0 1.3n 1.8 2.8n 1.8 2.9n 0 4.2n 0 4.3n 1.8 5.8n 1.8 5.9n 0 7.2n 0 7.3n 1.8 8.8n 1.8 8.9n 0 10.2n 0 10.3n 1.8 11.8n 1.8 11.9n 0)",
           "w0": "PWL(0 0 1.2n 0 1.3n 1.8 2.8n 1.8 2.9n 0)", "w1": "PWL(0 0 7.2n 0 7.3n 1.8 8.8n 1.8 8.9n 0)"}
    for k, (net, v) in enumerate(src.items()):
        x = 1500 + 140 * k; s += f"C {{vsource.sym}} {x} 0 0 0 {{name=V{net} value=\"{v}\"}}\n" + L(x, -30, net) + L(x, 30, "0", True)
    code = (".lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt\n.ic v(xcell.q)=1.8 v(xcell.qb)=0\n.tran 10p 12n\n"
            ".control\nrun\nset wr_singlescale\nset wr_vecnames\nwrdata tb_bitcell.dat v(xcell.q) v(xcell.qb) v(bl) v(blb) v(wl) v(pcb)\n.endc")
    s += f"C {{code_shown.sym}} -200 200 0 0 {{name=sim only_toplevel=false value=\"{code}\"}}\n"
    open(os.path.join(OUT, "tb_bitcell.sch"), "w").write(s)

if __name__ == "__main__":
    top(); tb()
    for name, (kind, full) in done.items():
        ref = []; ports = S[kind]["ports"]; flat(kind, {k: v for k, v in full.items()}, ports, "", ref)
        open(os.path.join(OUT, "ref", name + ".spice"), "w").write(f".subckt {name} {' '.join(ports)}\n" + "\n".join(ref) + "\n.ends\n")
    open(os.path.join(OUT, "xschemrc"), "w").write("source /foss/pdks/sky130A/libs.tech/xschem/xschemrc\n"
        "append XSCHEM_LIBRARY_PATH :[file dirname [file normalize [info script]]]\n"
        "set initial_geometry {1700x1050+0+0}\n")
    print(len(done), "cells:", " ".join(sorted(done)))
