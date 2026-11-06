# Progress

**Phase:** 5 running (full test and Fmax sweep on the RC netlist). Phase 6 docs in progress.

## Passed (evidence in `results/`)
- Phase 0: PDK CHECK PASS, read SNM 375 mV, hold 714 mV, write trip 654 mV, smoke 0 errors, `cell6t` 0 DRC.
- Phases 1 to 4: 50 cells 0 DRC errors. LVS 15 of 15 match, including `sram_top`: 2,136 merged devices, 793 nets, no property errors.
- Phase 5 smoke at 200 MHz on the C-only netlist: 68 reads, 0 core errors, 0 DOUT errors.

## Open problems
- `extresist` reached only 8 of 662 nets, so no chip-wide wire resistance. WL poly R is added by script instead.
- Skew along `clk_ff` cannot come from a C-only netlist; it is calculated from geometry.
- Single via stacks on supplies. Not checked for electromigration or IR drop.
- ESD clamps are 16 um2 diodes with no HBM/CDM check.

## How to rebuild
`python3 layout/emit.py; python3 layout/lvs.py` then in the container `cd layout/out && ./run_flow.sh && ./run_lvs.sh`.
