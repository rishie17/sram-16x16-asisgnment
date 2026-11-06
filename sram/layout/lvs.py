"""Per-cell LVS deck: schematics written from cells.sp with real device lines, so wrappers don't confuse Netgen."""
import os
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "out")
def m(t, d, g, s, b, w): return f"X{d}_{g}_{s}_{w} {d} {g} {s} {b} sky130_fd_pr__{'n' if t=='n' else 'p'}fet_01v8 w={w} l=0.15"
def inv(a, y, wn, wp, k=1): return [m("n", y, a, "GND", "GND", wn)] * 0 + [f"XN{a}{y}{i} {y} {a} GND GND sky130_fd_pr__nfet_01v8 w={wn} l=0.15" for i in range(k)] + [f"XP{a}{y}{i} {y} {a} VDD VDD sky130_fd_pr__pfet_01v8 w={wp} l=0.15" for i in range(k)]
def tgate(a, b, n, p): return [m("n", a, n, b, "GND", .42), m("p", a, p, b, "VDD", .42)]
S = {
 "bitcell": ("BL BLB WL VDD GND Q QB", [m("p","Q","QB","VDD","VDD",.42), m("n","Q","QB","GND","GND",.63), m("p","QB","Q","VDD","VDD",.42), m("n","QB","Q","GND","GND",.63), m("n","BL","WL","Q","GND",.42), m("n","BLB","WL","QB","GND",.42)]),
 "lv_inv": ("A Y VDD GND", inv("A","Y",.42,.84)), "lv_wldrv": ("A Y VDD GND", inv("A","Y",.42,.84,2)),
 "lv_ib1": ("A Y VDD GND", inv("A","Y",.42,.84,2)), "lv_ib2": ("A Y VDD GND", inv("A","Y",.56,1.12,3)),
 "lv_nand2": ("A B Y VDD GND", [m("p","Y","A","VDD","VDD",.84), m("p","Y","B","VDD","VDD",.84), m("n","Y","A","n1","GND",.84), m("n","n1","B","GND","GND",.84)]),
 "lv_nand3": ("A B C Y VDD GND", [m("p","Y",g,"VDD","VDD",.84) for g in "ABC"] + [m("n","Y","A","n1","GND",1.26), m("n","n1","B","n2","GND",1.26), m("n","n2","C","GND","GND",1.26)]),
 "precharge": ("BL BLB PCB VDD", [m("p","BL","PCB","VDD","VDD",.84), m("p","BLB","PCB","VDD","VDD",.84), m("p","BL","PCB","BLB","VDD",.42)]),
 "lv_colmux": ("BL BLB DL DLB CSEL GND", [m("n","BL","CSEL","DL","GND",.84), m("n","BLB","CSEL","DLB","GND",.84)]),
 "lv_sdff": ("D CLK Q QB VDD GND", inv("CLK","ckb",.42,.84) + inv("ckb","ck",.42,.84) + tgate("D","m1","ckb","ck") + inv("m1","m2",.42,.84) + inv("m2","m3",.42,.84) + tgate("m3","m1","ck","ckb") + tgate("m2","s1","ck","ckb") + inv("s1","Q",.63,1.26) + inv("Q","QB",.42,.84) + tgate("QB","s1","ckb","ck")),
 "rwckt": ("DL DLB WE DIN DINB PCB RD VDD GND", [m("p","DL","PCB","VDD","VDD",1.26), m("p","DLB","PCB","VDD","VDD",1.26), m("p","DL","PCB","DLB","VDD",.42), m("n","DL","WE","w1","GND",1.68), m("n","w1","DINB","GND","GND",1.68), m("n","DLB","WE","w2","GND",1.68), m("n","w2","DIN","GND","GND",1.68)] + inv("DL","RD",.42,1.26)),
 "rowslice": ("A B C WL VDD GND", [m("p","y","ABC"[i],"VDD","VDD",.84) for i in range(3)] + [m("n","y","A","n1","GND",1.26), m("n","n1","B","n2","GND",1.26), m("n","n2","C","GND","GND",1.26)] + inv("y","WL",.42,.84,2)),
}
def core_sch(rows=16, cols=16):
    P = " ".join(["clkb"] + [f"rl{i}" for i in range(4)] + [f"rh{i}" for i in range(4)] + [f"bl{k} blb{k}" for k in range(cols)] + ["VDD GND"])
    L = []
    for r in range(rows):
        L.append(f"Xr{r} rh{r >> 2} rl{r & 3} clkb wl{r} VDD GND rowslice")
        for k in range(cols): L.append(f"Xc{r}_{k} bl{k} blb{k} wl{r} VDD GND q{r}_{k} qb{r}_{k} bitcell")
    if cols == 16:
        P += " pcb dl dlb " + " ".join(f"ch{i} cl{i}" for i in range(4)) + " " + " ".join(f"csel{k}" for k in range(16))
        for k in range(16):
            L += [f"Xp{k} bl{k} blb{k} pcb VDD precharge", f"Xm{k} bl{k} blb{k} dl dlb csel{k} GND lv_colmux",
                  f"Xcd{k} ch{k >> 2} cl{k & 3} cb{k} VDD GND lv_nand2", f"Xcs{k} cb{k} csel{k} VDD GND lv_wldrv"]
    return P, L
S["core"] = core_sch()
def chip_sch():
    """Flat devices from the real netlist. Pads and R/L/C are excluded; Rterm is shorted until it is drawn."""
    import flatnet
    SC = flatnet.subckts(); L = []; rn = {"vdd": "VDD", "vss": "GND", "vddio": "vddio", "Xob.yd": "yd", "dout_pad": "yd"}
    n = 0
    for r in range(16):
        L.append(f"Xrs{r} rh{r >> 2} rl{r & 3} clkb wl{r} VDD GND rowslice")
    for t in flatnet.top_insts():
        if t[0].startswith(("Xpad", "Xrd", "Xwd")): continue
        for d in flatnet.expand(t, SC):
            if d[0] not in "np": continue
            ty, a, g, c, b, w = d; a, g, c, b = (rn.get(q, q).replace(".", "_") for q in (a, g, c, b)); n += 1
            L.append(f"X{n} {a} {g} {c} {b} sky130_fd_pr__{ty}fet_01v8 w={w} l=0.15")
    return "clk_pad addr_pad rw_pad din_pad yd VDD vddio GND", L
S["chip0"] = chip_sch()
def top_sch():
    P, L = S["chip0"]; L = list(L)
    L.append("Xrt yd DOUT sky130_fd_pr__res_generic_po w=8.2 l=3.4")
    D = {"DOUT": "DOUT", "CLK": "clk_pad", "ADDR": "addr_pad", "RW": "rw_pad", "DIN": "din_pad"}
    for k, n in D.items():
        L += [f"XE{k}1 {n} VDDIO sky130_fd_pr__diode_pd2nw_05v5 perim=1.6e+07 area=1.6e+13", f"XE{k}2 GND {n} sky130_fd_pr__diode_pw2nd_05v5 perim=1.6e+07 area=1.6e+13"]
    L = [" ".join({"vddio": "VDDIO", "clk_pad": "CLK", "addr_pad": "ADDR", "rw_pad": "RW", "din_pad": "DIN"}.get(t, t) for t in l.split()) for l in L]
    return "CLK ADDR RW DIN DOUT VDD VDDIO GND", L
S["sram_top"] = top_sch()
if __name__ == "__main__":
    with open(f"{OUT}/schem.sp", "w") as f:
        for n, (p, L) in S.items(): f.write(f".subckt {n} {p}\n" + "\n".join(L) + "\n.ends\n\n")
    with open(f"{OUT}/run_lvs.sh", "w") as f:
        f.write("#!/bin/bash\nS=/foss/pdks/sky130A/libs.tech/netgen/sky130A_setup.tcl\n")
        for n in S:
            f.write(f'netgen -batch lvs "{n}.spice {n}" "schem.sp {n}" $S lvs_{n}.out > /dev/null 2>&1; r=$(grep -cE "Circuits match uniquely" lvs_{n}.out); p=$(grep -c "Property errors were found" lvs_{n}.out); [ "$p" != 0 ] && r=0; echo "LVS {n} match_lines=$r $(grep -E "Property errors|Netlists do not match|Top level cell failed" lvs_{n}.out | head -2 | tr "\\n" " ")"\n')
    os.chmod(f"{OUT}/run_lvs.sh", 0o755); print(len(S), "LVS cells")
