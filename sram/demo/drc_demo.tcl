# Magic DRC demo on the bit cell: clean check, then a deliberate error, then the explanation.
load bitcell
select top cell
drc check
drc catchup
puts "DRC errors in bitcell: [drc list count total]"
box 0um 0um 0.10um 0.10um
paint metal1
drc check
drc catchup
puts "after painting a 0.10 um metal1 square: [drc list count total]"
box -0.3um -0.3um 0.4um 0.4um
drc why
