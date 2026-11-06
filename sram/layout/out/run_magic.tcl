source esd.tcl
source rterm.tcl
source tap.tcl
source bitcell.tcl
source inv.tcl
source nand2.tcl
source nand3.tcl
source precharge.tcl
source colmux.tcl
source inv_ff.tcl
source tg.tcl
source inv_s1.tcl
source inv_s2.tcl
source sdff.tcl
source ptap.tcl
source rw_wr.tcl
source rw_pre.tcl
source rw_eq.tcl
source rw_sa.tcl
source rwckt.tcl
source ib1.tcl
source ib2.tcl
source bondpad.tcl
source ob3.tcl
source ob4.tcl
source ob5.tcl
source ob6.tcl
source wldrv.tcl
source rowslice.tcl
source rowcell.tcl
source csdrv.tcl
source colslice.tcl
source core.tcl
source ob1.tcl
source ob2.tcl
source ix3s.tcl
source ix6s.tcl
source c1n.tcl
source c1p.tcl
source ix6.tcl
source chip0.tcl
source sram_top.tcl
source lv_inv.tcl
source lv_nand2.tcl
source lv_nand3.tcl
source lv_colmux.tcl
source lv_sdff.tcl
source lv_ib1.tcl
source lv_ib2.tcl
source lv_wldrv.tcl
load esd
select top cell
drc check
drc catchup
puts "DRC esd [drc list count total]"
extract all
ext2spice lvs
ext2spice -o esd.spice
ext2spice cthresh 0
ext2spice -o esd_pex.spice
gds write esd.gds
load rterm
select top cell
drc check
drc catchup
puts "DRC rterm [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rterm.spice
ext2spice cthresh 0
ext2spice -o rterm_pex.spice
gds write rterm.gds
load tap
select top cell
drc check
drc catchup
puts "DRC tap [drc list count total]"
extract all
ext2spice lvs
ext2spice -o tap.spice
ext2spice cthresh 0
ext2spice -o tap_pex.spice
gds write tap.gds
load bitcell
select top cell
drc check
drc catchup
puts "DRC bitcell [drc list count total]"
extract all
ext2spice lvs
ext2spice -o bitcell.spice
ext2spice cthresh 0
ext2spice -o bitcell_pex.spice
gds write bitcell.gds
load inv
select top cell
drc check
drc catchup
puts "DRC inv [drc list count total]"
extract all
ext2spice lvs
ext2spice -o inv.spice
ext2spice cthresh 0
ext2spice -o inv_pex.spice
gds write inv.gds
load nand2
select top cell
drc check
drc catchup
puts "DRC nand2 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o nand2.spice
ext2spice cthresh 0
ext2spice -o nand2_pex.spice
gds write nand2.gds
load nand3
select top cell
drc check
drc catchup
puts "DRC nand3 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o nand3.spice
ext2spice cthresh 0
ext2spice -o nand3_pex.spice
gds write nand3.gds
load precharge
select top cell
drc check
drc catchup
puts "DRC precharge [drc list count total]"
extract all
ext2spice lvs
ext2spice -o precharge.spice
ext2spice cthresh 0
ext2spice -o precharge_pex.spice
gds write precharge.gds
load colmux
select top cell
drc check
drc catchup
puts "DRC colmux [drc list count total]"
extract all
ext2spice lvs
ext2spice -o colmux.spice
ext2spice cthresh 0
ext2spice -o colmux_pex.spice
gds write colmux.gds
load inv_ff
select top cell
drc check
drc catchup
puts "DRC inv_ff [drc list count total]"
extract all
ext2spice lvs
ext2spice -o inv_ff.spice
ext2spice cthresh 0
ext2spice -o inv_ff_pex.spice
gds write inv_ff.gds
load tg
select top cell
drc check
drc catchup
puts "DRC tg [drc list count total]"
extract all
ext2spice lvs
ext2spice -o tg.spice
ext2spice cthresh 0
ext2spice -o tg_pex.spice
gds write tg.gds
load inv_s1
select top cell
drc check
drc catchup
puts "DRC inv_s1 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o inv_s1.spice
ext2spice cthresh 0
ext2spice -o inv_s1_pex.spice
gds write inv_s1.gds
load inv_s2
select top cell
drc check
drc catchup
puts "DRC inv_s2 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o inv_s2.spice
ext2spice cthresh 0
ext2spice -o inv_s2_pex.spice
gds write inv_s2.gds
load sdff
select top cell
drc check
drc catchup
puts "DRC sdff [drc list count total]"
extract all
ext2spice lvs
ext2spice -o sdff.spice
ext2spice cthresh 0
ext2spice -o sdff_pex.spice
gds write sdff.gds
load ptap
select top cell
drc check
drc catchup
puts "DRC ptap [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ptap.spice
ext2spice cthresh 0
ext2spice -o ptap_pex.spice
gds write ptap.gds
load rw_wr
select top cell
drc check
drc catchup
puts "DRC rw_wr [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rw_wr.spice
ext2spice cthresh 0
ext2spice -o rw_wr_pex.spice
gds write rw_wr.gds
load rw_pre
select top cell
drc check
drc catchup
puts "DRC rw_pre [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rw_pre.spice
ext2spice cthresh 0
ext2spice -o rw_pre_pex.spice
gds write rw_pre.gds
load rw_eq
select top cell
drc check
drc catchup
puts "DRC rw_eq [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rw_eq.spice
ext2spice cthresh 0
ext2spice -o rw_eq_pex.spice
gds write rw_eq.gds
load rw_sa
select top cell
drc check
drc catchup
puts "DRC rw_sa [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rw_sa.spice
ext2spice cthresh 0
ext2spice -o rw_sa_pex.spice
gds write rw_sa.gds
load rwckt
select top cell
drc check
drc catchup
puts "DRC rwckt [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rwckt.spice
ext2spice cthresh 0
ext2spice -o rwckt_pex.spice
gds write rwckt.gds
load ib1
select top cell
drc check
drc catchup
puts "DRC ib1 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ib1.spice
ext2spice cthresh 0
ext2spice -o ib1_pex.spice
gds write ib1.gds
load ib2
select top cell
drc check
drc catchup
puts "DRC ib2 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ib2.spice
ext2spice cthresh 0
ext2spice -o ib2_pex.spice
gds write ib2.gds
load bondpad
select top cell
drc check
drc catchup
puts "DRC bondpad [drc list count total]"
extract all
ext2spice lvs
ext2spice -o bondpad.spice
ext2spice cthresh 0
ext2spice -o bondpad_pex.spice
gds write bondpad.gds
load ob3
select top cell
drc check
drc catchup
puts "DRC ob3 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ob3.spice
ext2spice cthresh 0
ext2spice -o ob3_pex.spice
gds write ob3.gds
load ob4
select top cell
drc check
drc catchup
puts "DRC ob4 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ob4.spice
ext2spice cthresh 0
ext2spice -o ob4_pex.spice
gds write ob4.gds
load ob5
select top cell
drc check
drc catchup
puts "DRC ob5 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ob5.spice
ext2spice cthresh 0
ext2spice -o ob5_pex.spice
gds write ob5.gds
load ob6
select top cell
drc check
drc catchup
puts "DRC ob6 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ob6.spice
ext2spice cthresh 0
ext2spice -o ob6_pex.spice
gds write ob6.gds
load wldrv
select top cell
drc check
drc catchup
puts "DRC wldrv [drc list count total]"
extract all
ext2spice lvs
ext2spice -o wldrv.spice
ext2spice cthresh 0
ext2spice -o wldrv_pex.spice
gds write wldrv.gds
load rowslice
select top cell
drc check
drc catchup
puts "DRC rowslice [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rowslice.spice
ext2spice cthresh 0
ext2spice -o rowslice_pex.spice
gds write rowslice.gds
load rowcell
select top cell
drc check
drc catchup
puts "DRC rowcell [drc list count total]"
extract all
ext2spice lvs
ext2spice -o rowcell.spice
ext2spice cthresh 0
ext2spice -o rowcell_pex.spice
gds write rowcell.gds
load csdrv
select top cell
drc check
drc catchup
puts "DRC csdrv [drc list count total]"
extract all
ext2spice lvs
ext2spice -o csdrv.spice
ext2spice cthresh 0
ext2spice -o csdrv_pex.spice
gds write csdrv.gds
load colslice
select top cell
drc check
drc catchup
puts "DRC colslice [drc list count total]"
extract all
ext2spice lvs
ext2spice -o colslice.spice
ext2spice cthresh 0
ext2spice -o colslice_pex.spice
gds write colslice.gds
load core
select top cell
drc check
drc catchup
puts "DRC core [drc list count total]"
extract all
ext2spice lvs
ext2spice -o core.spice
ext2spice cthresh 0
ext2spice -o core_pex.spice
gds write core.gds
load ob1
select top cell
drc check
drc catchup
puts "DRC ob1 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ob1.spice
ext2spice cthresh 0
ext2spice -o ob1_pex.spice
gds write ob1.gds
load ob2
select top cell
drc check
drc catchup
puts "DRC ob2 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ob2.spice
ext2spice cthresh 0
ext2spice -o ob2_pex.spice
gds write ob2.gds
load ix3s
select top cell
drc check
drc catchup
puts "DRC ix3s [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ix3s.spice
ext2spice cthresh 0
ext2spice -o ix3s_pex.spice
gds write ix3s.gds
load ix6s
select top cell
drc check
drc catchup
puts "DRC ix6s [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ix6s.spice
ext2spice cthresh 0
ext2spice -o ix6s_pex.spice
gds write ix6s.gds
load c1n
select top cell
drc check
drc catchup
puts "DRC c1n [drc list count total]"
extract all
ext2spice lvs
ext2spice -o c1n.spice
ext2spice cthresh 0
ext2spice -o c1n_pex.spice
gds write c1n.gds
load c1p
select top cell
drc check
drc catchup
puts "DRC c1p [drc list count total]"
extract all
ext2spice lvs
ext2spice -o c1p.spice
ext2spice cthresh 0
ext2spice -o c1p_pex.spice
gds write c1p.gds
load ix6
select top cell
drc check
drc catchup
puts "DRC ix6 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o ix6.spice
ext2spice cthresh 0
ext2spice -o ix6_pex.spice
gds write ix6.gds
load chip0
select top cell
drc check
drc catchup
puts "DRC chip0 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o chip0.spice
ext2spice cthresh 0
ext2spice -o chip0_pex.spice
gds write chip0.gds
load sram_top
select top cell
drc check
drc catchup
puts "DRC sram_top [drc list count total]"
extract all
ext2spice lvs
ext2spice -o sram_top.spice
ext2spice cthresh 0
ext2spice -o sram_top_pex.spice
gds write sram_top.gds
load lv_inv
select top cell
drc check
drc catchup
puts "DRC lv_inv [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_inv.spice
ext2spice cthresh 0
ext2spice -o lv_inv_pex.spice
gds write lv_inv.gds
load lv_nand2
select top cell
drc check
drc catchup
puts "DRC lv_nand2 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_nand2.spice
ext2spice cthresh 0
ext2spice -o lv_nand2_pex.spice
gds write lv_nand2.gds
load lv_nand3
select top cell
drc check
drc catchup
puts "DRC lv_nand3 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_nand3.spice
ext2spice cthresh 0
ext2spice -o lv_nand3_pex.spice
gds write lv_nand3.gds
load lv_colmux
select top cell
drc check
drc catchup
puts "DRC lv_colmux [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_colmux.spice
ext2spice cthresh 0
ext2spice -o lv_colmux_pex.spice
gds write lv_colmux.gds
load lv_sdff
select top cell
drc check
drc catchup
puts "DRC lv_sdff [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_sdff.spice
ext2spice cthresh 0
ext2spice -o lv_sdff_pex.spice
gds write lv_sdff.gds
load lv_ib1
select top cell
drc check
drc catchup
puts "DRC lv_ib1 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_ib1.spice
ext2spice cthresh 0
ext2spice -o lv_ib1_pex.spice
gds write lv_ib1.gds
load lv_ib2
select top cell
drc check
drc catchup
puts "DRC lv_ib2 [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_ib2.spice
ext2spice cthresh 0
ext2spice -o lv_ib2_pex.spice
gds write lv_ib2.gds
load lv_wldrv
select top cell
drc check
drc catchup
puts "DRC lv_wldrv [drc list count total]"
extract all
ext2spice lvs
ext2spice -o lv_wldrv.spice
ext2spice cthresh 0
ext2spice -o lv_wldrv_pex.spice
gds write lv_wldrv.gds
quit -noprompt
