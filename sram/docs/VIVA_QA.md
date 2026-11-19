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
    Read time. One bit cell must discharge BL and DL before the output flop captures. The read window is about half a clock cycle. I showed this on the first layout. On the final layout I measured only pass and fail, so here it is inferred.

13. **What is your post-layout Fmax, and why is it below the schematic's 769 MHz?**
    454.5 MHz at TT on the extracted chip: 2.2 ns passes and 2.1 ns fails. Extraction adds the real wire and junction capacitance that the schematic only estimated: DL is 19.7 fF against a 10 fF estimate, and the clock nets are 37 to 50 fF each. The read path (bitline, then DL, then the sense inverter) has the same weak drive, so it slows down, and the clock and decode stages ahead of it are slower too. Core write energy roughly doubles at the same 200 MHz test (2.39 to 4.90 pJ), which shows the switched capacitance roughly doubled.

14. **How did you find that?**
    Waveforms at 2.5 ns showed DL too slow. DL wire was 43 fF because `rwckt` sat 200 um away. Moving it cut DL to 20 fF and raised Fmax from 333 to 454 MHz.

15. **Is the poly wordline a problem?**
    Each is about 17 kohm. I added that R per cell and compared at 2.0 ns on the earlier layout: 26 errors either way, so it was not the limit there. The final numbers include it.

16. **Why not metal wordlines?**
    Metal 1 is used by rails and metal 2 by bitlines. A strap would need more area in the cell.

17. **Why did energy double after layout?**
    Dynamic energy is C V squared, and wires add C. At 200 MHz on the same test, core write energy went from 2.39 to 4.90 pJ, and read from 2.28 to 4.56 pJ.

18. **Why is I/O energy larger than core energy?**
    The output driver swings a 5 pF load through a large buffer chain on VDDIO.

19. **Why 11 flops?**
    8 address, 1 RW, 1 DIN, 1 DOUT.

20. **How is precharge timed against the wordline?**
    pcb is NAND of the clock and an 8-inverter delayed copy, so it stays off until the wordline has closed.

21. **What is your clock skew?**
    Between the `clk_ff` and `clkb` branches it is 15 ps on the extracted chip. Within each net I simulated a distributed-RC model built from the layout geometry, with real loads. That gives 0.26 ps across the 11 flops, 0.6 ps across the 16 wordline gates, and 0.18 ps across the 16 precharge gates. The model's wire R comes from the tech-file sheet R, not from extraction.

22. **Why no H-tree?**
    An H-tree balances a 2D spread of sinks. Mine are in lines: 11 flops in one row, 16 wordline gates in one column, 16 precharge gates in one row. For a line, the equivalent is a length-matched binary tree, and I simulated it on the same sinks with real wire RC. It takes array skew from at most 0.6 ps to 0 ps. In exchange it adds 60 % more `clk_ff` wire, 48 ps more delay, a 100 ps slower edge and 15 % more clock energy (1.364 against 1.186 pJ per cycle). At the post-layout clock period of 2,200 ps (454.5 MHz, TT), 0.6 ps is 0.03 %. The tree's extra 48 ps of delay would matter more than the skew it removes, so I kept the simpler routing. The diagram and the numbers are in REPORT section 10.

23. **Why is array efficiency only 3.7 %?**
    That is array over the whole chip, and the chip is pad-limited: eight 60 um pads and three met5 rings set 76,236 um2. The core alone is 72.6 x 70.8 um = 5,141 um2, 20.1 um2 per bit. The array (2,820 um2) fills 54.9 % of it, because the decoder slices and column periphery are pitch-matched to the 3.40 x 3.24 um cell. Including the control strip (flops, predecoders, clock, output buffer) it is 25,137 um2, so the array is 11.2 % of that.

24. **What did LVS catch that DRC could not?**
    Wire overlaps between nets, such as `rdqb` to `ab7`, and transmission gate PMOS drawn 0.84 instead of 0.42.

25. **What would you improve next?**
    Add a differential sense amplifier, strap the wordlines, tighten the control row, and check IR drop and ESD properly.

26. **How do you know your Xschem schematics are the circuit you simulated?**
    They are generated from `cells.sp`, and netgen compares each Xschem netlist with the simulated netlist: 21 of 21 match uniquely. I planted a wrong width and a short, and both made the check fail.

27. **What does the clock tree cost in power?**
    1.19 pJ per cycle for the generator, wires and sink gates. That is 0.54 mW at the post-layout Fmax of 454.5 MHz (energy times frequency). A binary tree would raise it to 1.36 pJ.

28. **Why is `pcb` slower than `clk_ff` (427 against 205 ps)?**
    `pcb` comes from a NAND of the clock and an 8-inverter delayed copy, then two buffers. The extra delay is deliberate: precharge must not overlap the wordline.

29. **Does wire resistance change your timing?**
    Hardly. The longest clock wire is 202 um of met3 at 0.047 ohm/sq and 0.33 um wide, about 29 ohm. With the clock RC trees added, the schematic still passes at 714 MHz with 0 errors.

30. **Why 8 pads when the brief says 5 signals?**
    The brief limits signals, not supplies. Each of the 5 signals has its own pad, and the other three are supplies: VDD for the core, GND, and VDDIO for the output driver. The output driver switches a 5 pF load through a 6-stage buffer with 86 um fingers. A separate VDDIO keeps that current spike and its bond-wire bounce off the core supply that the bit cells and sense inverter use. Merging VDDIO into VDD would save one pad, but every DOUT edge would then bump the supply of the cells being read.

31. **What about process corners?**
    I ran SS and FF on the same extracted chip, at 1.8 V and 27 C. Fmax is 312.5 MHz at SS, 454.5 MHz at TT and at least 588.2 MHz at FF. The full 256-location test passes at TT and FF; at SS only the random test was completed, and it passes from 3.2 ns. Core energy changes by only about 2 % between corners (5.20, 5.12 and 5.08 pJ per write at Fmax), because C and V are the same and only the transistor speed changes. I did not sweep voltage or temperature, so the slow, 1.62 V, 125 C case is expected to be slower and was not simulated.
