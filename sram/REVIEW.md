# 256-bit SRAM (SKY130), checklist for a reviewer

Rishab Gautam, EE24BTECH11220, IIT Hyderabad. VLSI course project, Stage 2.

I would like a second pair of eyes: is everything the brief asks for done, and done properly? Below is the brief, what was built, the evidence for each item, and the parts I already know are weak. Every number comes from a simulation or check log in the repo (paths in backticks). Numbers marked *calculated* are arithmetic, not simulation.

## 1. The brief

- Design a 16x16 (256-bit) SRAM from transistor-level schematic to physical layout: bit cells, address decoding, read/write circuitry, output.
- Exactly 5 external signals: read/write, serial address, clock, data in, data out.
- Transistor level throughout, with both schematic and post-layout simulation.
- Optimise for area.
- Report energy to read and to write one bit, and the maximum clock frequency.
- Every I/O passes through a bond-wire plus pad equivalent circuit.
- A clock tree for clock distribution, and top metal for power and ground.
- Custom layout only. No standard cells, no foundry SRAM cells, no OpenRAM, no automatic place and route. Scripts that generate your own geometry are allowed.

## 2. Compliance at a glance

| Requirement | Status | Evidence |
|---|---|---|
| 16x16 6T array, transistor level | Done | `cells/cells.sp`, `SRAM256_schematics.pdf` |
| 5 signals only | Done | Pads: CLK, ADDR, RW, DIN, DOUT, plus VDD, GND, VDDIO |
| Schematic simulation | Done | `results/schematic_rerun/` |
| Physical layout | Done | `gds/sram_top.gds`, `plots/layout_*.png` |
| Custom layout and routing, no P&R or std cells | Done | Python generators in `layout/`; the flow checks that no foundry cell is used (`LOCAL CELLS OK`) |
| DRC | 0 errors, 50 cells | `results/phase4_drc_lvs.txt` |
| LVS | 15 of 15 match uniquely, incl. full chip | `results/phase4_drc_lvs.txt`, `layout/out/lvs_*.out` |
| Post-layout simulation | Done, passes | `results/post_final/` |
| Area optimised | Bit cell 11.0 um2, down from about 17.6 um2 at Stage 1 | Section 5 |
| Read and write energy | Reported | Section 6 |
| Fmax | Reported, schematic and post-layout | Section 6 |
| Bond wire and pad on every I/O | Done | Pad, ESD and Rterm in layout; bond wire R/L in the testbench |
| Clock tree | **Partial**: centre-fed trunk, not an H-tree | Section 4 |
| Top metal for power and ground | Done: three nested met5 rings | `plots/layout_sram_top.png` |

## 3. Tools and flow

- **Tools:** SKY130A PDK in the `hpretl/iic-osic-tools` Docker image. Magic 8.3.685 (DRC, extraction), Netgen 1.5.324 (LVS), ngspice-47, KLayout 0.30.12 (rendering).
- **Layout:** stdlib-only Python scripts in `layout/` write Magic Tcl that paints every rectangle, contact and wire. That covers transistors, wells, cell abutment, the array tiling, all signal routing (met1 to met4), the met5 power rings and the pads. No router or placer is involved.
- **LVS:** each block is checked against a reference netlist built from the same netlist used for the schematic simulation.
- **Extraction:** flat, `ext2spice cthresh 0`, so all parasitic C is included.
- **Wire resistance:** `extresist` only managed 8 of 662 nets, so wire resistance is not extracted. The one exception is the poly wordlines: a script inserts 1,088 ohm per bit cell along each wordline (*calculated*: about 48 ohm/sq x 3.40/0.15 squares).
- **Post-layout testbench:** the same stimulus and reference-model checker as the schematic run. 50 ohm drivers, bond wire 0.2 ohm + 2 nH, pad 1 pF, 5 pF load on DOUT. ESD diodes and the 20 ohm output resistor come from the extracted layout. The resistor simulates at 20.07 ohm (`results/post_final/device_check.txt`).
- **Fix applied to the extracted netlist:** Magic writes diode area and perimeter in units that made each ESD diode about 11.8 mF. `gen/post.py` rescales them to the correct ~11.8 fF before simulation.

## 4. Architecture

- **Bit cell:** 6T. Pull-down 0.63/0.15, access 0.42/0.15, pull-up 0.42/0.15 (W/L in um), so cell ratio 1.5.
- **Addressing:** 8-flop serial shift register always holds the last 8 ADDR bits. A[7:4] selects the row and A[3:0] the column.
- **Access timing:** one access every cycle. CLK high precharges and decodes; CLK low enables the wordline and does the read or write. A de Bruijn address stream therefore touches all 256 locations in 263 cycles.
- **Flops:** 11 transmission-gate master-slave flops: 8 address, RW, DIN, DOUT.
- **Row decode:** two 2:4 predecoders, then NAND3(rh, rl, clkb) and an inverter per row, pitch-matched to the 3.24 um row.
- **Column decode:** two 2:4 predecoders, NAND2 and inverter per column, then an NMOS 16:1 pass-gate mux onto shared DL/DLB.
- **Read and write circuit (`rwckt`):** series-NMOS write driver, DL/DLB precharge, and a skewed inverter (0.42/1.26) as a single-ended sense. There is no sense amplifier.
- **Output:** output flop, 6-stage tapered buffer, 20 ohm poly series resistor.
- **Clock:** root buffer, then three branches. `clk_ff` feeds all flops; its drivers sit mid-row, so the trunk is fed from the centre. `clkb` gates the wordlines and write enable. `pcb` = NAND(clock, 8-inverter delayed clock) times the precharge.
- **Power:** three nested met5 rings: VDD (core) inner, GND, VDDIO (output stages) outer.
- **Pads:** 8 pads of 60 x 60 um. Each signal pad has an ESD diode pair (16 um2 each).

## 5. Area

| Item | Value | Source |
|---|---|---|
| Chip | 280.435 x 271.85 um = 76,236 um2 | `results/post_final/cell_sizes.txt` |
| Per bit | 298 um2 | *calculated* |
| Bit cell pitch | 3.40 x 3.24 um = 11.0 um2 | Generator pitch |
| Array | 54.4 x 51.84 um = 2,820 um2 | *calculated* from pitch |
| Array efficiency | 3.7 % | *calculated* |
| Core (array + decoders + column periphery) | 72.645 x 70.775 um | `cell_sizes.txt` |

**Area layout choices:**
- Rows mirror to share rails, taps and wells. Columns translate, because mirroring columns would short neighbouring BLBs through shared diffusion.
- The chip is pad-limited (eight 60 um pads plus rings), so the logic around the core was not compacted further.

## 6. Results (TT, 1.8 V, 27 C)

| Quantity | Schematic | Post-layout | Source |
|---|---:|---:|---|
| Full test, 200 MHz (write all 256, read back; 265 reads) | 0 errors | 0 errors | `results/*/s1re_full_5ns`, `post_full_5ns` |
| Last pass / first fail period | 1.3 / 1.25 ns | 2.2 / 2.1 ns | `results/*/s1re_fmax_*`, `post_fmax_*` |
| Fmax | 769 MHz | 454.5 MHz | as above |
| Core energy per write | 2.39 pJ | 4.90 pJ | full test, 200 MHz |
| Core energy per read | 2.28 pJ | 4.56 pJ | full test, 200 MHz |
| I/O energy per write / read | 8.55 / 8.45 pJ | 8.59 / 8.47 pJ | full test, 200 MHz |
| Leakage, core + I/O | 57.8 + 23.5 nA (146 nW) | 382 + 100 nA (867 nW) | `leak_*.txt` |
| Hold / read SNM, write trip | 714 / 375 / 654 mV | same on extracted cell | `snm_extracted.txt` |

**How the energy is measured:** VDD (core) and VDDIO current are each integrated over every write cycle and every read cycle of the test, then averaged per cycle. The word is 1 bit, so one access is one bit. Core energy includes clock, decode, flops and array.

**Post-layout Fmax sweep** (random traffic, 41 checked reads per point):

| Period (ns) | 2.5 | 2.35 | 2.2 | 2.1 | 2.0 | 1.6 |
|---|---|---|---|---|---|---|
| Core / DOUT errors | 0/0 | 0/0 | **0/0** | 12/12 | 24/25 | 27/25 |

**Extracted wire capacitance** (self plus coupling, `results/post_final/wire_cap.txt`):

| Net | DL | DLB | `clk_ff` | `clkb` | `pcb` |
|---|---:|---:|---:|---:|---:|
| C (fF) | 19.7 | 20.0 | 50.1 | 45.4 | 37.4 |

The schematic assumed 10 fF on DL. In the first layout, DL carried 43 fF because the read/write circuit sat about 200 um from the column mux, and Fmax was 333 MHz. Moving it next to the mux brought DL down to 19.7 fF and Fmax up to 454.5 MHz.

**Clock arrival from the CLK pad** (extracted, `post_extra.txt`):

| Branch | `ckr` | `clk_ff` | `clkb` |
|---|---:|---:|---:|
| Delay (ps) | 240 | 425 | 440 |

`clk_ff` to `clkb` differ by 15 ps. Skew along the `clk_ff` trunk cannot be simulated, since the trunk wire has no extracted R. Calculated: about 15 ohm of met3 worst case, under 1 ps.

## 7. Weaknesses I already know about

1. **One corner only.** Everything is TT, 1.8 V, 27 C. No SS/FF, voltage or temperature sweep.
2. **Fmax rests on 41 random reads.** The exhaustive 256-location test only ran at 200 MHz. Sweep resolution is 0.1 ns.
3. **No wire R except the wordlines.** Bitlines, DL and the clock trunk are capacitance only, so Fmax is probably optimistic.
4. **Clock is a centre-fed trunk, not an H-tree.** The flops all sit in one row, so I argue a centre-fed trunk is the balanced choice. Skew along it is calculated, not extracted.
5. **Fmax limiter not re-diagnosed on the final layout.** On the first layout it was the read path (DL slew). On the final layout only pass and fail were measured.
6. **Leakage is 6 times higher after layout, cause unproven.** ESD diodes and extra junction area are the suspects. A `.nodeset` on all cells is required, or the DC solve finds metastable cells and reports mA.
7. **No IR drop, electromigration, ESD (HBM/CDM) or antenna check.** Supplies use single via stacks.
8. **Single-ended skewed-inverter sense.** It is small but slow; a differential sense amp would raise Fmax.
9. **Bond wire R/L live in the testbench**, not as layout elements. I believe that is the normal reading of "equivalent circuit", but please check.

## 8. What I would like checked

- Is a centre-fed trunk acceptable as the "clock tree", or do examiners expect an H-tree?
- Is the energy definition right: per-cycle supply energy, with core and I/O split?
- Is capacitance-only extraction plus script-added wordline R acceptable post-layout evidence?
- Any obvious problem in the layout (`gds/sram_top.gds`), for example the pad ring, the ESD placement, or how power reaches the core.
- Anything in the brief I have missed or misread.

## 9. How to look at it

- **Layout:** open `gds/sram_top.gds` in KLayout and press `*` to show the full hierarchy.
- **Pictures:** `plots/` has the layout renders, schematics and waveforms (`09_post_layout_read.png` is the extracted chip reading back).
- **Full report:** `REPORT.md`.
- **Rebuild and recheck:** see `REPORT.md` section 13.
