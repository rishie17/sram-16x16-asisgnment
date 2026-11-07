# Likely viva questions

Numbers are from this design. Schematic Fmax is from Stage 1 results; post-layout numbers are on the extracted final chip at TT, 1.8 V.

1. **How do five pins address 256 bits?**
   ADDR is serial. Eight flops shift it in, and each cycle uses the last 8 bits: A[7:4] row, A[3:0] column.

2. **Why does an access happen every cycle?**
   The register always holds a valid address. So a de Bruijn sequence can touch a new location each cycle: 256 writes in 263 cycles.

3. **Why 0.63 / 0.42 / 0.42 in the bit cell?**
   Cell ratio 1.5 keeps reads stable (read SNM 375 mV), while the access device can still overpower the 0.42 pull-up for writes (trip 654 mV).

4. **Define static noise margin.**
   The largest square that fits inside the butterfly curve lobes. I measured it with the Seevinck 45 degree rotation.

5. **Why is read SNM lower than hold SNM?**
   During a read, the access device lifts the low node, which weakens the inverter. Hold is 714 mV and read is 375 mV.

6. **Why did the extracted SNM not change?**
   SNM is DC, so parasitic caps have no effect. The match mostly proves the layout kept the device sizes.

7. **Why do bit cell rows mirror but columns not?**
   Mirrored rows share rails and taps. Mirrored columns would join neighbouring BLBs through shared diffusion.

8. **What sets the bit cell pitch?**
   Local interconnect spacing, which forces a 0.70 um contact pitch. The pitch is 3.40 x 3.24 um, or 11.0 um2.

9. **Why precharge with PMOS?**
   PMOS passes a full VDD. NMOS would stop one threshold below it.

10. **Why NMOS only in the column mux?**
    Reads sense DL falling and writes pull a line low, and NMOS passes lows well.

11. **Why a skewed inverter instead of a sense amplifier?**
    It is far smaller and simpler for 256 bits. The cost is speed: it waits for a large swing on DL.

12. **What limits Fmax?**
    Read time. One bit cell must discharge BL and DL before the output flop captures. The read window is about half a clock cycle.

13. **Your Fmax dropped from 769 to 454 MHz. Why?**
    Extra wire and junction capacitance on the read path. DL has about 20 fF of wire against the 10 fF schematic estimate, and every part of the clock and decode path is slower too.

14. **How did you find that?**
    Waveforms at 2.5 ns showed DL too slow. DL wire was 43 fF because `rwckt` sat 200 um away. Moving it cut DL to 20 fF and raised Fmax from 333 to 454 MHz.

15. **Is the poly wordline a problem?**
    Each is about 17 kohm. I added that R per cell and compared at 2.0 ns on the earlier layout: 26 errors either way, so it was not the limit there. The final numbers include it.

16. **Why not metal wordlines?**
    Metal 1 is used by rails and metal 2 by bitlines. A strap would need more area in the cell.

17. **Why did energy double after layout?**
    Dynamic energy is C V squared, and wires add C. Core write energy went from 2.34 to 5.12 pJ. The 2.34 pJ is at 200 MHz and the 5.12 pJ at 2.2 ns.

18. **Why is I/O energy larger than core energy?**
    The output driver swings a 5 pF load through a large buffer chain on VDDIO.

19. **Why 11 flops?**
    8 address, 1 RW, 1 DIN, 1 DOUT.

20. **How is precharge timed against the wordline?**
    pcb is NAND of the clock and an 8-inverter delayed copy, so it stays off until the wordline has closed.

21. **What is your clock skew?**
    Between `clk_ff` and `clkb` it is 15 ps from simulation. Along `clk_ff` itself I calculated about 15 ohm of metal 3 from the centre feed, so under 1 ps. That part is an estimate, because wire R was not extracted.

22. **Is that an H-tree?**
    No. The flops are in one row, so it is a centre-fed trunk. An H-tree suits a 2D spread of loads.

23. **Why is array efficiency only 3.7%?**
    The chip is pad-limited. Eight 60 um pads and rings set the size at 76,236 um2; the array is 2,820 um2.

24. **What did LVS catch that DRC could not?**
    Wire overlaps between nets, such as `rdqb` to `ab7`, and transmission gate PMOS drawn 0.84 instead of 0.42.

25. **What would you improve next?**
    Add a differential sense amplifier, strap the wordlines, tighten the control row, and check IR drop and ESD properly.
