onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /ramlpm_tb/address
add wave -noupdate /ramlpm_tb/clock
add wave -noupdate -radix hexadecimal /ramlpm_tb/data
add wave -noupdate -radix hexadecimal /ramlpm_tb/q
add wave -noupdate /ramlpm_tb/wren
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {220 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {740 ps} {990 ps}
