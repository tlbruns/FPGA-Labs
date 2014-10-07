# load w/SDO file and default units to ns
vsim +altera -do fulladder_run_msim_gate_vhdl.do -l msim_transcript -gui -sdftyp {/=C:/Users/Trevor/Documents/School/EECE 277 (FPGA)/HW1/Q4/fulladder/simulation/modelsim/fulladder_vhd.sdo} -t ns work.fulladder

# add signals to wave
# LEDG is the output
# SW is the input
add wave -position end  sim:/fulladder/LEDG
add wave -position end  sim:/fulladder/SW

# simulate all possible inputs
force -freeze sim:/fulladder/SW(2) 0 0, 1 {100 ns} -r 200
force -freeze sim:/fulladder/SW(1) 0 0, 1 {50 ns} -r 100
force -freeze sim:/fulladder/SW(0) 0 0, 1 {25 ns} -r 50

run 400