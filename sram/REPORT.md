# 256-bit SRAM in SKY130: schematic to post-layout

Rishab Gautam, EE24BTECH11220, B.Tech EE, IIT Hyderabad. Stage 2 report.

Every number below comes from a file in this repo. Calculated values are labelled as calculated. Conditions are TT, 1.8 V, 27 C unless stated.

## 1. Result

| Item | Result |
|---|---|
| DRC | 0 errors on all 50 layout cells, including `sram_top` |
| LVS | 15 of 15 checks match uniquely, including `sram_top`, no property errors |
| Full test, 200 MHz, extracted chip | 265 reads, 0 core errors, 0 DOUT errors |
| Fmax, extracted chip | 454.5 MHz: 2.2 ns passes, 2.1 ns fails. Random traffic, 41 reads, TT only |
| Energy at 200 MHz, core | 4.90 pJ per write, 4.56 pJ per read |
| Energy at 200 MHz, I/O | 8.59 pJ per write, 8.47 pJ per read |
| Leakage | 867 nW (382 nA core, 100 nA I/O, at 1.8 V; power calculated) |
| Chip area | 280.435 x 271.85 um = 76,236 um2, 298 um2 per bit |
| Bit cell | 3.40 x 3.24 um pitch, 11.0 um2 |
| Array efficiency | 3.7 %: the chip is pad-limited |

## 2. Specification

A 16 x 16 array built from transistors, with exactly 5 signals: RW, serial ADDR, CLK, DIN and DOUT. Each signal passes through a bond-wire and pad equivalent. A clock network distributes the clock, and top metal carries power and ground. Layout is custom, with no standard cells, no foundry SRAM cells, no OpenRAM and no automatic place and route. All layout comes from my own Python generators in `layout/`.

| Pin | Direction | Function |
|---|---|---|
| CLK | in | Clock. Inputs sample on the rising edge |
| ADDR | in | Serial address, shifted into an 8-bit register |
| RW | in | 1 = write, 0 = read |
| DIN | in | Write data |
| DOUT | out | Read data, valid one cycle after the access |

The layout adds supply pads VDD, GND and VDDIO, for 8 pads in total. The bond wire (0.2 ohm, 2 nH) and pad capacitance (1 pF) stay in the testbench. ESD diodes and the 20 ohm output resistor are drawn in the layout.

## 3. Architecture

![Block diagram](plots/00_block_diagram.png)

- **Array:** 256 6T cells. Pull-down 0.63/0.15, access 0.42/0.15, pull-up 0.42/0.15 (W/L in um).
- **Address:** 8-flop shift register holding the last 8 ADDR bits. A[7:4] selects the row and A[3:0] the column.
- **Access:** one in every cycle. CLK high precharges and decodes. CLK low enables the wordline.
- **Row path:** two 2:4 predecoders, then NAND3(rh, rl, clkb) and an inverter for each row.
- **Column path:** two 2:4 predecoders, NAND2 and inverter per column, then an NMOS 16:1 mux onto DL and DLB.
- **Read and write:** shared series-NMOS write driver, DL and DLB precharge, skewed sense inverter.
- **Output:** output flop, 6-stage tapered buffer, 20 ohm series resistor.
- **Clock:** root buffer to three branches: `clk_ff`, `clkb`, and `pcb` (NAND of the clock and its 8-inverter delayed copy).
- **Flops:** 11 in total: 8 address, RW, DIN, DOUT.

![Protocol](plots/03_protocol_timing.png)

## 4. Design choices

| Choice | Reason | Cost |
|---|---|---|
| Serial address with an access every cycle | One pin reaches 256 locations; de Bruijn traffic writes all 256 in 263 cycles | A random access needs 8 cycles |
| Cell ratio 1.5 | Read SNM 375 mV, against 307 mV at ratio 1.0 | Larger pull-down |
| Poly wordline, no strap | Keeps the cell small | About 17 kohm per wordline (calculated) |
| Rows mirror, columns translate | Rows share rails and taps; mirrored columns would short BLBs | Column pitch set by contacts |
| Skewed inverter, no sense amplifier | Few devices and no timing signal | Slower: DL needs a large swing |
| NMOS-only column mux | Reads sense a falling DL, so a PMOS is not needed | Writing a 1 relies on the opposite line going low |
| `rwckt` beside the column mux | DL wire fell from 43 fF to 19.7 fF | Control routing around it |
| Centre-fed `clk_ff` trunk | The flops sit in one row | Not the H-tree the brief suggested (see section 11) |
| Three nested met5 rings | Separate core and I/O supplies on top metal | Single via stacks, no IR check |

## 5. Schematics

| Block | Figure |
|---|---|
| 6T bit cell | ![bit cell](plots/s01_bitcell_6t.png) |
| Column read and write | ![column](plots/s02_column_readwrite.png) |
| Row decoder | ![row decoder](plots/s03_row_decoder.png) |
| Flip-flop | ![flop](plots/s04_dff.png) |
| Pad and clock | ![pad and clock](plots/s05_pad_clock.png) |

The full transistor-level set is in `SRAM256_schematics.pdf`. The netlist is `cells/cells.sp`, and `gen/gen_sram.py` generates the top level.

Bit-cell sizing sweep (`results/phase0_run_all.txt`):

| PD width (um) | Hold SNM (mV) | Read SNM (mV) | Write trip BL (mV) |
|---|---:|---:|---:|
| 0.42 | 726 | 307 | 698 |
| **0.63 (used)** | **714** | **375** | **654** |
| 0.84 | 707 | 416 | 624 |
| 1.0 | 704 | 448 | 604 |

![SNM and write margin](plots/01_bitcell_snm_write.png)

## 6. Layouts

Sizes are bounding boxes from the GDS (`results/post_final/cell_sizes.txt`). The bit cell box is 3.805 um tall because the well extends past the 3.24 um row pitch. Neighbouring rows overlap that margin.

| Block | Size (um) | Picture |
|---|---|---|
| Bit cell | 3.40 x 3.24 pitch | ![bit cell](plots/layout_bitcell.png) |
| Flip-flop `sdff` | 19.32 x 3.73 | ![flop](plots/layout_sdff.png) |
| Row slice `rowcell` | 6.64 x 3.805 | ![row](plots/layout_rowcell.png) |
| Column slice `colslice` | 3.405 x 6.84 | ![column](plots/layout_colslice.png) |
| Read/write `rwckt` | 12.99 x 3.805 | ![rwckt](plots/layout_rwckt.png) |
| Pad `bondpad` | 60 x 60 | ![pad](plots/layout_bondpad.png) |
| Array and periphery `core` | 72.645 x 70.775 | ![core](plots/layout_core.png) |

The floorplan is the full chip below. The core and control strip sit in the middle (`chip0`, 248.01 x 101.355 um). Inputs are along the bottom. GND, VDDIO, DOUT and VDD are along the top. The three met5 rings surround the core: VDD inner, GND middle, VDDIO outer.

![Full chip](plots/layout_sram_top.png)

## 7. DRC and LVS evidence

- **DRC:** Magic 8.3.685, sky130A rules. 50 cells, 0 errors each. Log: `results/phase4_drc_lvs.txt`.
- **LVS:** Netgen 1.5.324. All 15 checks say "Netlists match uniquely": `bitcell`, inverter, wordline driver, input buffers, NAND2, NAND3, `precharge`, column mux, flop, `rwckt`, `rowslice`, `core`, `chip0`, `sram_top`.
- **Top-level count:** `sram_top` has 2,136 netgen devices and 793 nets: 1,303 NMOS, 806 PMOS, 10 ESD diodes, 1 poly resistor and 16 `rowslice` instances. Each `rowslice` counts as one device at this level, which is why this is below the 2,237 transistors of Stage 1.
- **Banned cells:** the flow checks that every cell used is local. Log line `LOCAL CELLS OK`.

LVS caught two kinds of real bug: wires overlapping between nets, such as `rdqb` and `ab7`, and transmission-gate PMOS devices drawn 0.84 um instead of 0.42 um.

## 8. Area

| Item | Value |
|---|---|
| Chip | 280.435 x 271.85 um = 76,236 um2 |
| Per bit | 298 um2 (calculated) |
| Array | 54.4 x 51.84 um = 2,820 um2 (calculated from pitch) |
| Array efficiency | 3.7 % (calculated) |
| Bit cell | 11.0 um2, against about 17.6 um2 at Stage 1 (4.0 x 4.4 um) |

The chip is pad-limited. Eight 60 um pads and the rings set its size, so compacting the logic further would barely change the total. I did not compact it. The real area work is the bit cell and the pitch-matched periphery.

## 9. Post-layout method

1. Magic extracts the flat chip with all parasitic capacitance (`ext2spice cthresh 0`).
2. `gen/post.py` corrects diode area and perimeter units from the extracted netlist.
3. It adds wordline poly resistance by splitting each wordline at every column, at 1,088 ohm per cell (calculated: about 48 ohm/sq x 3.40/0.15 squares). Rterm simulates at 20.07 ohm with this poly model (`results/post_final/device_check.txt`).
4. The testbench is the same as Stage 1: 50 ohm drivers, bond wire, pad capacitance, 5 pF load, and the same reference model and stimulus.

`extresist` only reached 8 of 662 nets, so no other wire resistance is modelled. All other wires are capacitance only.

![Post-layout read](plots/09_post_layout_read.png)

## 10. Schematic against post-layout

Both columns use the same PDK in the same container. Schematic reruns: `results/schematic_rerun/`. They reproduce the Stage 1 Fmax. The container PDK gives 146 nW schematic leakage against the 104 nW Stage 1 note, so use 146 nW here. The SNM rows are for the extracted bit cell alone (`results/post_final/snm_extracted.txt`). Post-layout: `results/post_final/`.

| Quantity | Schematic | Post-layout | Why they differ |
|---|---:|---:|---|
| Full test at 200 MHz, reads | 265 | 265 | Same test |
| Core errors, DOUT errors | 0, 0 | 0, 0 | Both pass |
| Core energy, write (pJ) | 2.39 | 4.90 | Wire capacitance: E = CV2 per switched net |
| Core energy, read (pJ) | 2.28 | 4.56 | Same cause |
| I/O energy, write (pJ) | 8.55 | 8.59 | Almost unchanged: the 5 pF load is in both |
| I/O energy, read (pJ) | 8.45 | 8.47 | Same reason |
| Last passing period (ns) | 1.3 | 2.2 | Wire and junction capacitance on the read path |
| First failing period (ns) | 1.25 | 2.1 | Same cause |
| Fmax (MHz) | 769 | 454.5 | Same cause |
| Leakage, core + I/O (nA) | 57.8 + 23.5 | 382 + 100 | About 6 times higher, cause not isolated. Extra junction area and ESD diodes are the likely source, but I did not test that |
| Hold SNM (mV) | 714 | 714 | DC only: capacitance has no DC effect, and the extracted W/L match |
| Read SNM (mV) | 375 | 375 | Same reason |
| Write trip BL (mV) | 654 | 654 | Same reason |

Fmax sweep on the extracted chip (`results/post_final/post_fmax_*.res.json`), 41 reads each:

| Period (ns) | f (MHz) | Core errors | DOUT errors | Core write (pJ) | Core read (pJ) |
|---:|---:|---:|---:|---:|---:|
| 2.5 | 400 | 0 | 0 | 5.14 | 4.94 |
| 2.35 | 426 | 0 | 0 | 5.14 | 4.93 |
| **2.2** | **454.5** | **0** | **0** | **5.12** | **4.92** |
| 2.1 | 476 | 12 | 12 | 5.11 | 4.90 |
| 2.0 | 500 | 24 | 25 | 5.00 | 4.77 |
| 1.6 | 625 | 27 | 25 | 4.98 | 4.80 |

**The route to this Fmax.** The first full layout passed at 3.0 ns and failed at 2.5 ns (`results/layout_v1/`). `rwckt` sat about 200 um from the column mux, which put 43 fF of wire on DL. Moving it next to the mux cut DL to 19.7 fF and raised Fmax from 333 to 454.5 MHz. On that first layout, turning the wordline resistance off at 2.0 ns did not help: 26 errors either way. So wordline R was not the limit there.

**Wire capacitance on key nets** (`results/post_final/wire_cap.txt`; self plus coupling):

| Net | Extracted (fF) |
|---|---:|
| DL | 19.7 (Stage 1 estimate: 10) |
| DLB | 20.0 |
| `clk_ff` | 50.1 |
| `clkb` | 45.4 |
| `pcb` | 37.4 |

**Clock timing** (`results/post_final/post_extra.txt`, extracted chip, delay from the CLK pad):

| Branch | Delay (ps) |
|---|---:|
| `ckr` | 240 |
| `clk_ff` | 425 |
| `clkb` | 440 |

`clk_ff` to `clkb` differ by 15 ps. The netlist has no wire resistance on `clk_ff`, so skew along the trunk cannot show in simulation. From geometry, the worst-case trunk resistance is about 15 ohm of met3, which gives under 1 ps. That figure is calculated, not extracted.

**Power while reading or writing every cycle** (*calculated* as energy per access x clock frequency; mW, as core write / core read / I/O write / I/O read):

| Condition | Schematic | Post-layout |
|---|---|---|
| 200 MHz | 0.48 / 0.46 / 1.71 / 1.69 | 0.98 / 0.91 / 1.72 / 1.69 |
| At own Fmax (769 / 454.5 MHz, from the last passing run) | 1.89 / 1.83 / 6.13 / 7.79 | 2.33 / 2.24 / 3.59 / 4.67 |

Static (leakage) power is listed separately in the table above.

## 11. Limitations

- **One corner.** Everything is TT, 1.8 V, 27 C. No slow corner, voltage or temperature sweep. Real Fmax would be lower.
- **Fmax is from 41 random reads.** The full 256-location test passed at 200 MHz, not at 454.5 MHz. Period resolution near the limit is 0.1 ns.
- **Most wires have no resistance.** Only wordline poly R is modelled, by script.
- **Fmax limit not re-diagnosed.** The read path was shown to be the limit on the first layout. On the final layout I measured only pass and fail, so read path is inferred.
- **Clock is a centre-fed trunk, not an H-tree.** The flops are in one row. Skew along the trunk is calculated, not extracted.
- **No IR drop or electromigration check.** Supplies use single via stacks.
- **ESD is two 16 um2 diodes per signal pad.** No HBM or CDM check.
- **Leakage increase is unexplained** beyond the likely cause in section 10.
- **Simple sense path.** The skewed inverter limits read speed.

## 12. Deviations from the brief

- The project is in `~/vlsi`, not `~/projects/sram16x16`. There was no `eda` script, so I wrote one.
- Generators share modules, rather than one script per cell.
- The phase gates were run straight through, on my instruction.
- The Stage 2 deadline and the examiners' Stage 1 questions were never answered, so neither shaped the plan.

## 13. Rebuild

```
cd sram
python3 layout/emit.py; python3 layout/lvs.py
../eda 'cd /foss/designs/sram/layout/out && ./run_flow.sh && ./run_lvs.sh'
../eda 'cd /foss/designs/sram/layout/out && magic -dnull -noconsole -rcfile /foss/pdks/sky130A/libs.tech/magic/sky130A.magicrc flat.tcl'
../eda 'cd /foss/designs/sram && python3 gen/post.py full --T 5e-9 --tag post_full_5ns'
```
