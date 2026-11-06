# Progress

**Phase:** blocked before Phase 0. No EDA tools installed yet.

## Done
- Stage 1 zip extracted to `~/vlsi/sram`.
- `./eda` written for Docker. Not tested: Docker is not installed.

## Open problems
- WSL has no Docker, ngspice, Magic, Netgen, KLayout, sky130A, numpy or matplotlib, and no passwordless sudo.
- Project is in `~/vlsi`, not `~/projects/sram16x16`.

## Next
Install Docker and pull the image, then run Phase 0.
No Stage 2 results exist yet.

## Layout generators (sram/layout) - NOT verified by Magic or Netgen
Install blocked, so these passed only my own Python pre-check (width/spacing, device connectivity).
Bit cell pitch 3.40 x 3.24 um. Run `layout/emit.py`, then `out/run_flow.sh` in the container.
