#!/bin/bash
# One-shot runner for the iic-osic-tools container.
#   ./run_all.sh          PDK check + bit-cell sweep + 80-cycle smoke test (~10-15 min)
#   ./run_all.sh full     ... plus the full 256-location test at 200 MHz (~1 h)
#   ./run_all.sh fmax     ... plus the clock-period sweep (~40 min)
set -e
cd "$(dirname "$0")"
mkdir -p sim plots
cp -n pdk/spiceinit sim/.spiceinit 2>/dev/null || true
cd sim
echo "== [1] PDK sanity (inverter) =="
ngspice -b ../check/inv_check.cir 2>&1 | grep -E "tphl|tplh|PDK CHECK"
echo "== [2] Bit-cell sizing: hold/read SNM, write trip =="
python3 ../gen/cell_param.py
echo "== [3] Smoke test: 10 serial accesses + every partial-address read, 200 MHz =="
python3 ../gen/run_check.py smoke --T 5e-9 | grep -E "reads_checked|errors\"|E_"
if [ "$1" = "full" ]; then
  echo "== [4] Full test: write all 256, read all 256, 200 MHz =="
  python3 ../gen/run_check.py full --T 5e-9 --tag full_5ns | grep -E "reads_checked|errors\"|E_"
fi
if [ "$1" = "fmax" ]; then
  echo "== [4] Fmax sweep =="
  PERIODS="2.0e-9 1.4e-9 1.3e-9 1.25e-9" ../gen/fmax_sweep.sh
fi
echo "Done. Logs, .dat and .res.json files are in sim/."
