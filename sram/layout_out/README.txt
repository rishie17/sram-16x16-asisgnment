6T bit cell layout, sky130A (Magic)
  cell6t.mag / cell6t.gds   layout (DRC clean, 0 errors with the sky130A Magic rules)
  cell6t_ext.spice          extracted devices (matches the schematic: 4 nfet, 2 pfet, same sizes)
  cell6t_pex.spice          extracted with parasitic capacitances
  mk6t.py                   script that generates the drawing (rectangles in um)

Open it in the iic-osic-tools container:
  ./eda 'cd /foss/designs/sram/layout_out && magic -rcfile /foss/pdks/sky130A/libs.tech/magic/sky130A.magicrc cell6t.mag'
Then in Magic: press "v" to fit the view, type "drc check" then "drc count" in the console.
Or view the GDS in KLayout: klayout cell6t.gds
