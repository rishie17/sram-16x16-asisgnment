# Block explanations for the viva

Each block: what it does, why this circuit, why these sizes, what breaks if changed.

## 6T bit cell
- Two cross-coupled inverters hold one bit; two NMOS access devices connect it to BL and BLB.
- It is the smallest static cell with differential access, and needs no refresh.
- Pull-down 0.63, access 0.42, pull-up 0.42 (W in um, L 0.15): cell ratio 1.5.
- The ratio protects reads: a stronger pull-down stops the low node rising enough to flip the cell.
- Make the pull-down weaker and read SNM falls; the sweep gave 307 mV at 0.42 against 375 mV at 0.63.

## Bit cell layout
- Pitch is 3.40 x 3.24 um, which is 11.0 um2 per bit against about 17.6 um2 at Stage 1.
- Rows mirror to share VDD and GND rails, taps and n-well.
- Columns translate and do not mirror: mirroring would short neighbouring BLBs through shared diffusion.
- Contact pitch is 0.70 um because local interconnect spacing sets it, not the transistors.
- Bitlines run on metal 2; the wordline stays on poly, which is compact but resistive.

## Address shift register
- Eight flip-flops hold the last 8 ADDR bits, so one pin can select 256 locations.
- A[7:4] picks the row and A[3:0] the column.
- An access happens every cycle, so a de Bruijn sequence reaches a new address each cycle.
- Flops give both Q and QB, so the decoders need no extra address inverters.
- Removing the register would need 8 address pins, and the brief allows only 1.

## Flip-flop
- It is a master-slave pair built from transmission gates, capturing on the rising edge.
- Transmission gates pass full 0 and 1 levels with few devices.
- The output inverter is 0.63/1.26 because Q drives shift and decode loads.
- Master and slave take opposite clock phases, so data cannot race straight through.
- If both clocks overlapped too long, data could race through; the local inverters keep that skew small.

## Row decoder and wordline driver
- Two 2:4 predecoders, then NAND3(rh, rl, clkb) plus an inverter for each row.
- Predecoding uses fewer and smaller gates than one 4-input gate per row.
- The clkb input means a wordline can only turn on in the low clock phase.
- Each slice is built to the 3.24 um row pitch, so a row drives its own wordline directly.
- Without clkb, a wordline could be on during precharge and corrupt stored data.

## Column decoder and mux
- Two 2:4 predecoders, then NAND2 plus inverter drives one csel per column.
- NMOS pass gates (0.84 um) connect the selected BL and BLB to shared DL and DLB.
- NMOS passes a low well, and reads sense a falling DL, so PMOS devices are not needed.
- NAND2 and driver are stacked in one column, because side by side they need 3.64 um and the pitch is 3.40.
- Writing a 1 relies on the opposite line going low and the cell regenerating.

## Precharge
- Three PMOS devices pull BL and BLB to VDD and equalise them while pcb is low.
- PMOS passes a full high level, which NMOS cannot.
- The equaliser (0.42) removes any leftover difference between the two lines.
- pcb comes from NAND of the clock and its delayed copy, so precharge starts after the wordline closes.
- If precharge overlapped the wordline, it would fight the cell and lose the read.

## Read and write circuit
- Series NMOS stacks (1.68 um) pull DL or DLB low when we=1, chosen by the data.
- A write needs the bitline well below the trip point; measured write trip is 654 mV.
- Reads use a skewed inverter on DL, a very simple single-ended sense.
- It is skewed high (0.42/1.26) so it responds early as DL falls from VDD.
- The single-ended sense is small, but slower than a differential sense amplifier.

## Clock generator
- A root buffer feeds three branches: clk_ff, clkb and pcb.
- clk_ff clocks all 11 flops; its drivers sit mid-row, so the trunk is fed from the centre.
- clkb enables wordlines and writes; pcb times the precharge with an 8-inverter delay.
- Sizes taper up to drive the load without loading the input pin much.
- Shorten the delay chain and precharge can overlap the wordline, so reads fail.

## Output path
- Six tapered inverter stages take a small internal signal to a 5 pF off-chip load.
- Tapering by about 4 per stage keeps total delay low.
- The last stage is 860/430 um, built as many 10 um fingers.
- It runs on VDDIO, separate from the core, so output noise stays off the core supply.
- A poly resistor gives 20 ohm series termination to damp bond wire ringing; it measured 20.07 ohm.

## Input path, pads and ESD
- Two inverters isolate the pad and restore clean edges.
- Each signal pad has two diodes: one to VDDIO and one to GND.
- They stay off in normal use and clamp a pad that goes outside the rails.
- Bond wire 0.2 ohm and 2 nH plus 1 pF of pad C are modelled in the testbench, not drawn.
- Pads are 60 um squares on metal 5.

## Power
- Three nested metal 5 rings carry VDD, GND and VDDIO, as the brief asks for top metal.
- Via stacks reach metal 2 straps, which feed the metal 1 rails in the cells.
- Long rails are fed from both ends, because metal 1 is resistive over 240 um.
- VDDIO is separate, so the output stage's large currents stay off the core.
- Supply R, IR drop and electromigration were not analysed.
