transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Trevor/Documents/School/EECE 277 (FPGA)/resources/DE2_115_TOP.vhd}
vcom -93 -work work {C:/Users/Trevor/Documents/School/EECE 277 (FPGA)/Labs/Lab 2/Q2/serial_adder_FSM.vhd}

