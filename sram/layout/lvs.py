"""Per-cell LVS deck: schematics written from cells.sp with real device lines, so wrappers don't confuse Netgen."""
import os
OUT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "out")
def m(t, d, g, s, b, w): return f"X{d}_{g}_{s}_{w} {d} {g} {s} {b} sky130_fd_pr__{'n' if t=='n' else 'p'}fet_01v8 w={w} l=0.15"
def inv(a, y, wn, wp, k=1): return [m("n", y, a, "GND", "GND", wn)] * 0 + [f"XN{a}{y}{i} {y} {a} GND GND sky130_fd_pr__nfet_01v8 w={wn} l=0.15" for i in range(k)] + [f"XP{a}{y}{i} {y} {a} VDD VDD sky130_fd_pr__pfet_01v8 w={wp} l=0.15" for i in range(k)]
def tgate(a, b, n, p): return [m("n", a, n, b, "GND", .42), m("p", a, p, b, "VDD", .84)]
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
    return P, L
S["rowslice_h"] = S.pop("rowslice"); S["rowslice"] = S.pop("rowslice_h")
S["core"] = core_sch()
if __name__ == "__main__":
    with open(f"{OUT}/schem.sp", "w") as f:
        for n, (p, L) in S.items(): f.write(f".subckt {n} {p}\n" + "\n".join(L) + "\n.ends\n\n")
    with open(f"{OUT}/run_lvs.sh", "w") as f:
        f.write("#!/bin/bash\nS=/foss/pdks/sky130A/libs.tech/netgen/sky130A_setup.tcl\n")
        for n in S:
            f.write(f'netgen -batch lvs "{n}.spice {n}" "schem.sp {n}" $S lvs_{n}.out > /dev/null 2>&1; r=$(grep -cE "Circuits match uniquely" lvs_{n}.out); echo "LVS {n} match_lines=$r $(grep -E "Property errors|Netlists do not match|Top level cell failed" lvs_{n}.out | head -2 | tr "\\n" " ")"\n')
    os.chmod(f"{OUT}/run_lvs.sh", 0o755); print(len(S), "LVS cells")
