# KLayout batch: print each GDS top cell's size in um. klayout -b -r bbox.py
import pya, glob
for f in sorted(glob.glob("*.gds")):
    l = pya.Layout(); l.read(f); b = l.top_cell().dbbox()
    print(f"{f[:-4]:12s} {b.width():9.3f} x {b.height():9.3f} um  {b.width()*b.height():11.3f} um2")
