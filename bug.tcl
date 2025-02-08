proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    error "Index out of range" 
  }
  return [lindex $list $index]
}

set my_list {a b c d e}

puts [get_element $my_list 5]  ;# this will cause an error