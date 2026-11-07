# Progress

**Phase:** all phases done. Deliverables are `REPORT.md`, `docs/EXPLAIN.md`, `docs/VIVA_QA.md` and `plots/`.

## Passed (evidence in `results/`)
- Phase 0: PDK CHECK PASS, read SNM 375 mV, hold 714 mV, write trip 654 mV, smoke 0 errors, `cell6t` 0 DRC.
- Phases 1 to 4: 50 cells 0 DRC errors. LVS 15 of 15 match, including `sram_top`: 2,136 merged devices, 793 nets, no property errors.
- Phase 5, final layout: full test at 200 MHz, 265 reads, 0 errors. Fmax 454.5 MHz (2.2 ns pass, 2.1 ns fail). Core 4.90 pJ write, 4.56 pJ read. Leakage 867 nW.
- Schematic rerun on the same PDK: full test 0 errors, Fmax 769 MHz, core 2.39 / 2.28 pJ, leakage 146 nW.

## Open problems
- Only TT was simulated. No corners.
- Fmax comes from 41 random reads. The full test passed at 200 MHz only.
- `extresist` reached only 8 of 662 nets, so no chip-wide wire resistance. WL poly R is added by script.
- Skew along `clk_ff` is calculated, and the clock is a centre-fed trunk rather than an H-tree.
- Single via stacks on supplies. Not checked for electromigration or IR drop.
- ESD clamps are 16 um2 diodes with no HBM/CDM check.
- Post-layout leakage is about 6 times schematic. Cause not isolated.

## Unanswered
- Stage 2 deadline, and what the examiners asked at the Stage 1 demo.

## How to rebuild
See section 13 of `REPORT.md`.
