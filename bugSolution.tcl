proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return "" ;# Or handle it in a different way;  return -code error "Index out of range" to raise an error but control it better.
  } else {
    return [lindex $list $index]
  }
}

set my_list {a b c d e}

puts [get_element $my_list 5] ;# Returns empty string instead of throwing error
puts [get_element $my_list 2] ;# Returns element at index 2