# KLayout batch: PNG of a GDS. klayout -b -r render.py -rd gds=a.gds -rd out=a.png -rd w=1400
import pya
lv = pya.LayoutView(); lv.load_layout(gds, 0); lv.max_hier()
lv.set_config("background-color", "#ffffff"); lv.zoom_fit()
lv.save_image(out, int(w), int(w))
