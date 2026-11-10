#!/bin/bash
# PNG of each schematic: open it in the Xschem GUI on a virtual display and grab the canvas.
cd "$(dirname "$0")"; Xvfb :99 -screen 0 1700x1100x24 >/dev/null 2>&1 & sleep 3; export DISPLAY=:99
for f in ${@:-*.sch}; do c=${f%.sch}
  timeout 40 xschem --rcfile xschemrc $f </dev/null >/dev/null 2>&1 & p=$!; sleep ${WAIT:-10}
  python3 -c "from PIL import ImageGrab; ImageGrab.grab(xdisplay=':99').crop((0,78,1700,1055)).save('../plots/xschem_$c.png')"
  kill $p 2>/dev/null; pkill -x xschem; sleep 1
done
