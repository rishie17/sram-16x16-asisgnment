foreach n {chip0} {
  load $n
  select top cell
  drc check
  drc catchup
  puts "=== $n"
  foreach {k v} [drc listall why] { set b [lindex $v 0]; puts "WHY [llength $v] | $k | [lmap q $b {format %.3f [expr {$q*0.005}]}]" }
}
quit -noprompt
