"""Flatten sram256 from gen_sram.py + cells.sp to device lines, for LVS against the layout.
Bond wire R/L/C stay in the testbench (prompt section 4); Rterm and ESD diodes are handled at top."""
import os, re, sys
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(ROOT, "gen"))
os.environ.setdefault("SRAM_PDK_LIB", "x")
from gen_sram import netlist_core
def subckts():
    S = {}; cur = None
    for l in open(os.path.join(ROOT, "cells/cells.sp")):
        l = l.split("*")[0].strip()
        if not l or l.startswith((".model", ".ends")): continue
        if l.startswith(".subckt"):
            t = l.split(); params = dict(p.split("=") for p in t if "=" in p)
            cur = S[t[1]] = {"ports": [p for p in t[2:] if "=" not in p], "params": params, "body": []}
        elif cur: cur["body"].append(l)
    return S
def top_insts():
    return [l.split() for l in netlist_core(wire=False).splitlines() if l.startswith("X")]
def expand(toks, S, prefix=""):
    """Yields (type, d, g, s, b, w) for one instance line, resolving parameters."""
    name, rest = toks[0], toks[1:]
    params = dict(t.split("=") for t in rest if "=" in t); args = [t for t in rest if "=" not in t]
    kind, nets = args[-1], args[:-1]
    if kind in ("nmos", "pmos"):
        yield (kind[0], *nets, float(params.get("w", {"nmos": .42, "pmos": .84}[kind]))); return
    sc = S[kind]; P = dict(sc["params"]); P.update(params)
    m = dict(zip(sc["ports"], nets))
    for l in sc["body"]:
        t = l.split()
        if t[0][0] in "RLCD": yield (t[0][0].lower() + "x", t[0], *[m.get(x, prefix + name + "." + x) for x in t[1:3]]); continue
        u = [t[0]]
        for x in t[1:]:
            if "=" in x:
                k, v = x.split("="); v = P.get(v.strip("{}"), v); u.append(f"{k}={v}")
            else: u.append(m.get(x, x if x in sc["ports"] else (prefix + name + "." + x if x not in S and x not in ("nmos","pmos") else x)))
        yield from expand(u, S, prefix + name + ".")
if __name__ == "__main__":
    S = subckts(); I = top_insts(); D = []; kinds = {}
    for t in I:
        k = [x for x in t if "=" not in x][-1]; kinds[k] = kinds.get(k, 0) + 1
        D += list(expand(t, S))
    print("instances", kinds); M = [d for d in D if d[0] in "np"]; print("MOS", len(M), "other", len(D) - len(M), [d for d in D if d[0] not in "np"][:3])
