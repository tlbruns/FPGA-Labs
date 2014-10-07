# open fulladder
vsim -voptargs=+acc -t ns work.fulladder

# add signals to wave
# LEDG is the output
# SW is the input
add wave -position end  sim:/fulladder/LEDG
add wave -position end  sim:/fulladder/SW

# simulate all possible inputs
force -freeze sim:/fulladder/SW(2) 0 0, 1 {100 ns} -r 200
force -freeze sim:/fulladder/SW(1) 0 0, 1 {50 ns} -r 100
force -freeze sim:/fulladder/SW(0) 0 0, 1 {25 ns} -r 50

run 200