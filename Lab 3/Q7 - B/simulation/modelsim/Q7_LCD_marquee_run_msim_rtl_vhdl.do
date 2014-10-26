transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MARCO/Altera Projects/FPGA-Labs/Lab 3/Q7 - B/LCD_marquee.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/FPGA-Labs/Lab 3/Q7 - B/lcd_controller.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/FPGA-Labs/Lab 3/Q7 - B/counter_1Hz.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/FPGA-Labs/Lab 3/Q7 - B/counter_785tick.vhd}

