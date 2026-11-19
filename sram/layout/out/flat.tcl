load sram_top
select top cell
extract all
ext2spice lvs
ext2spice hierarchy off
ext2spice cthresh 0
ext2spice -o sram_top_flat.spice
quit -noprompt
