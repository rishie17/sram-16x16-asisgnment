#!/bin/bash
# sweep clock period with random every-cycle read/write traffic
cd "$(dirname "$0")/../sim"
for T in ${PERIODS:-3.0e-9 2.5e-9 2.2e-9 2.0e-9 1.8e-9}; do
  python3 ../gen/run_check.py rand64 --T $T --tag fmax_$T > /dev/null 2>&1
  python3 -c "import json;r=json.load(open('fmax_$T.res.json'));print('T=%.2fns f=%.0fMHz core_err=%d dout_err=%d reads=%d Ew=%.2fpJ Er=%.2fpJ'%(r['T_ns'],1e3/r['T_ns'],r['core_errors'],r['dout_errors'],r['reads_checked'],r['E_write_core_pJ'],r['E_read_core_pJ']))"
done
