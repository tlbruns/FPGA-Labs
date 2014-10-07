# load with ns resolution
vsim +altera -do Lab1_Q5_add16bit_run_msim_gate_vhdl.do -l msim_transcript -gui -t ns work.lab1_q5_add16bit

# add waves
add wave -position end  sim:/lab1_q5_add16bit/clock
add wave -position end  -radix decimal sim:/lab1_q5_add16bit/dataa
add wave -position end  -radix decimal sim:/lab1_q5_add16bit/datab
add wave -position end  -radix decimal sim:/lab1_q5_add16bit/result

# set clock with period of 50ns
force -freeze sim:/lab1_q5_add16bit/clock 0 0, 1 {25 ns} -r 50

# set inputs to test for two positive numbers (0-100ns), 
# two negative numbers (100-200ns),
# a positive and a negative (200-300ns),
# a positive and a zero (300-400ns),
# and a negative and a zero (400-500ns)
force -deposit /dataa 10#10113, -10#5219 100, 10#12110 200, 10#673 300, 10#0 400
force -deposit /datab 10#16137, -10#8326 100, -10#4781 200, 10#0 300, -10#15872 400
run 500