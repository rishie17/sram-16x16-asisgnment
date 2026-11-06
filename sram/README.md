# 256 × 1 SRAM (16 × 16 6T array), transistor level, SKY130

Rishab Gautam (EE24BTECH11220) | Stage 1: schematic-level design + simulation

## Pins (5 signals, each through a bond wire + pad model)

| Pin  | Dir | Function |
|------|-----|----------|
| CLK  | in  | clock; all inputs sampled on the rising edge |
| ADDR | in  | serial address bit, shifted into an 8-bit register each rising edge (MSB first) |
| RW   | in  | 1 = write, 0 = read; applies to the cycle in which it is sampled |
| DIN  | in  | write data |
| DOUT | out | read data, valid one cycle after the read access |

Bond wire + pad model (every pin): R = 0.2 Ω, L = 2 nH, C_pad = 1 pF, ESD diode clamps to VDDIO/GND.
Inputs are driven from a 50 Ω source; DOUT drives a 5 pF off-chip load through a 20 Ω series termination.

## Access protocol

The address register always holds the last 8 ADDR bits, and an access happens in **every** cycle
(CLK high: decode + precharge; CLK low: wordline on, read or write).

- Random access: shift in A7..A0 with RW = 0, and put RW = 1 + DIN on the 8th bit to write. DOUT shows Q[A] after the next edge.
- Sequential access of all 256 locations: drive ADDR with a de Bruijn sequence B(2,8). Every 8-bit window is a different address,
  so each cycle touches a new location. That gives 256 writes in 263 cycles.

## Files

| Path | What |
|------|------|
| `cells/cells.sp` | All leaf cells (bit cell, TG DFF, gates, precharge, column mux, read/write circuit, pad, I/O buffers) |
| `netlist/sram256.sp` | Full flattened top-level netlist (generated) |
| `gen/gen_sram.py` | Netlist + testbench generator, reference model, de Bruijn / random stimulus |
| `gen/run_check.py` | Runs ngspice, checks every read against the reference model, integrates supply current for energy |
| `gen/fmax_sweep.sh` | Clock-period sweep |
| `gen/cell_param.py`, `gen/snm.py` | Bit-cell sizing sweep, SNM (Seevinck 45° method), write trip point |
| `plots/` | All figures |
| `results/` | Pass/fail and energy summary of every run |
| `pdk/sky130_min.lib` | Minimal TT model loader (outside the container only) |
| `run_all.sh`, `check/inv_check.cir` | One-shot runner and 10-second PDK sanity check |

## Run it in the iic-osic-tools container

Unzip into `~/projects/sram16x16/`, so the project sits at `/foss/designs/sram` inside the container. Then:

```
./eda 'cd /foss/designs/sram && ./run_all.sh'        # PDK check + bit cell + smoke test, ~10-15 min
./eda 'cd /foss/designs/sram && ./run_all.sh full'   # + all 256 locations at 200 MHz, ~1 h
./eda 'cd /foss/designs/sram && ./run_all.sh fmax'   # + clock-period sweep, ~40 min
```

Expected output: `PDK CHECK: PASS`; read SNM about 375 mV at PD=0.63; smoke test `core_errors: 0, dout_errors: 0`.
The model path defaults to `/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice`; override with `SRAM_PDK_LIB=...`.
Needs python3 with numpy (matplotlib only for the plot scripts). Results were produced with the google/skywater
fd_pr TT models on ngspice 42; the container's open_pdks build may shift numbers by a few percent.

## Reproduce

```
# outside the container: ngspice >= 41, SKY130 models, and SRAM_PDK_LIB pointing at a sky130 .lib
# (pdk/sky130_min.lib is a minimal TT loader for a raw skywater-pdk-libs-sky130_fd_pr checkout).
# sim/.spiceinit must contain: set ngbehavior=hsa
mkdir -p sim && cd sim
python3 ../gen/run_check.py smoke --T 5e-9      # quick check (80 cycles)
python3 ../gen/run_check.py full  --T 5e-9      # write all 256, read all 256
../gen/fmax_sweep.sh                            # Fmax
```
