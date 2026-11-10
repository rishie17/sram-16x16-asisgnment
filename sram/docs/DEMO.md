# Live demo steps

Everything runs from WSL Ubuntu in `~/vlsi`.
- `./eda-gui '<cmd>'` runs a tool in the `hpretl/iic-osic-tools` container and shows its windows on the Windows desktop through WSLg. A display test from the container worked on this machine.
- `./eda '<cmd>'` is the same without windows, for batch commands.

**Rehearse every step once before the viva.** Each window takes a few seconds to open.

## 1. Layout in KLayout (2 min)

```
cd ~/vlsi
./eda-gui 'klayout -l sram/demo/sky130A.lyp sram/gds/sram_top.gds'
```

`-l` loads the sky130 layer colours (`sram/demo/sky130A.lyp`, copied from the PDK).

- If you only see cell outlines, raise the hierarchy depth. Press `*`, or set the level box in the toolbar to a high number. Do this once before the demo so you know which works.
- **Backup:** KLayout installed on Windows can open `sram_top.gds` from Downloads. Load the layer file with File > Load Layer Properties.

**What to point at, from far to near:**
1. **Eight 60 um pads.** Inputs (CLK, ADDR, RW, DIN) are along the bottom; GND, VDDIO, DOUT and VDD are along the top. Each signal pad has two ESD diodes, and DOUT has the 20 ohm poly resistor.
2. **Three met5 rings:** VDD inner, GND middle, VDDIO outer. This is "top metal for power and ground".
3. **The core.** The 16 x 16 array sits with the row decoder on its left, precharge above, and the column mux and decoder below.
4. **The control strip under the core.** Row A holds the 11 flops plus `rwckt`; row B holds the gates. The `clk_ff` met3 track runs along the flop row, fed from the centre by a met4 riser.
5. **Zoom into the array.** Rows mirror, so neighbours share VDD and GND rails; columns repeat at 3.40 um.
6. **Zoom into one bit cell.** Six transistors in 3.40 x 3.24 um.

## 2. Schematics in Xschem (3 min)

```
cd ~/vlsi
./eda-gui 'cd sram/xschem && xschem --rcfile xschemrc tb_bitcell.sch'
```

- To descend into a block, click it and press `e`. `Ctrl+e` goes back up.
- Open other schematics with File > Open from the same folder:
  - `bitcell.sch`, `dff.sch` and `rwckt.sch` are readable leaf cells.
  - `sram256.sch` is the whole chip, 434 blocks. Zoom in on it to show the real blocks.
- **Say this:** the schematics are generated from `cells/cells.sp`. Netgen confirms every one matches the netlist that was simulated.

**Prove it live** (about 1 minute, prints 21 lines ending in MATCH):
```
./eda 'cd sram/xschem && ./check.sh'
```

**Run the 6T testbench** from the Xschem netlist and plot it (about 30 s):
```
./eda 'cd sram/xschem && xschem -q -x -n -s --rcfile xschemrc -o net tb_bitcell.sch && cd net && cp ../../sim/.spiceinit . && ngspice -b tb_bitcell.spice > tb_bitcell.log && cd /foss/designs/sram && python3 gen/plot_tb_xschem.py'
```

- **Expected printout:** Q = 0.000 V after write 0 and after the read; Q = 1.800 V after write 1 and after the read.
- **Picture:** `sram/plots/xschem_tb_bitcell_waves.png`.

## 3. DRC in Magic (2 min)

**Batch version.** It checks the bit cell (0 errors), paints a deliberate 0.10 um metal1 square (1 error), and prints why: `Metal1 width < 0.14um (met1.1)`.
```
./eda 'cd sram/layout/out && magic -dnull -noconsole -rcfile /foss/pdks/sky130A/libs.tech/magic/sky130A.magicrc ../../demo/drc_demo.tcl'
```

**GUI version:**
```
./eda-gui 'cd sram/layout/out && magic -rcfile /foss/pdks/sky130A/libs.tech/magic/sky130A.magicrc bitcell.mag'
```

In the Magic console:
- `select top cell`, `drc check`, `drc list count total` → `0`
- Draw a tiny metal1 box and the white DRC dots appear. `drc why` explains them.
- **Do not save:** press `u` to undo, or quit without saving.

If `layout/out/*.mag` is missing (for example from a fresh zip), rebuild it first, which takes a few minutes:
```
cd ~/vlsi/sram && python3 layout/emit.py && python3 layout/lvs.py && cd .. && ./eda 'cd /foss/designs/sram/layout/out && ./run_flow.sh'
```

## 4. Saved results to show (no waiting)

| What | File |
|---|---|
| DRC and LVS logs, all blocks | `sram/results/phase4_drc_lvs.txt` |
| Full-chip LVS report | `sram/layout/out/lvs_sram_top.out` ("Netlists match uniquely") |
| Extracted chip reading back at 200 MHz | `sram/plots/09_post_layout_read.png` |
| Clock arrival per sink, four topologies | `sram/plots/10_clock_tree_arrival.png` |
| Numbers | `sram/REPORT.md`, sections 1 and 10 |

A post-layout simulation takes 25 minutes to 4 hours, so show saved results instead of running one live.
