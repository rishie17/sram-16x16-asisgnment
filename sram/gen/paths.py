"""Single place for all paths. Defaults match the iic-osic-tools container
(project mounted at /foss/designs/<folder>); override the PDK with SRAM_PDK_LIB."""
import os
ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
GEN = os.path.join(ROOT, "gen")
CELLS = os.path.join(ROOT, "cells", "cells.sp")
SIM = os.path.join(ROOT, "sim")
PLOTS = os.path.join(ROOT, "plots")
PDK_LIB = os.environ.get("SRAM_PDK_LIB", "/foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice")
os.makedirs(SIM, exist_ok=True); os.makedirs(PLOTS, exist_ok=True)
