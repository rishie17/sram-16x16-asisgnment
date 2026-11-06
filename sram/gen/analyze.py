import sys, json, numpy as np
sys.path.insert(0,__import__('os').path.dirname(__import__('os').path.abspath(__file__)))
from paths import ROOT, CELLS, SIM, PLOTS, PDK_LIB
from gen_sram import make_stream
from run_check import load, check, energy
kind, T, dat = sys.argv[1], float(sys.argv[2]), sys.argv[3]
cyc, exp = make_stream(kind)
D = load(dat)
ec, eo = check(cyc, exp, T, D)
Ew, Ewio = energy(cyc, T, D, 1); Er, Erio = energy(cyc, T, D, 0, start=8)
print(f"reads checked {len(exp)}  core errors {len(ec)}  DOUT errors {len(eo)}")
print("first core errs", ec[:8]); print("first dout errs", eo[:8])
print(f"E/write core {Ew.mean()*1e12:.3f} pJ  io {Ewio.mean()*1e12:.3f} pJ | E/read core {Er.mean()*1e12:.3f} pJ io {Erio.mean()*1e12:.3f} pJ")
