#!/usr/bin/tclsh
source ./random.tcl
puts -nonewline "Choose a random string length: "
flush stdout
set length [gets stdin]
set random_string ""

for {set i 1} {$i <= [expr $length]} {incr i} {
    set random_ascii [random_min_max 65 116]
    if {$random_ascii > 90} {
        set random_ascii [expr $random_ascii + 6]
    }
    set character [format %c $random_ascii]
    set random_string "$random_string$character"
}

puts $random_string