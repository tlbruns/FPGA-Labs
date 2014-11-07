transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/MARCO/Altera\ Projects/FPGA-Labs/LCD/db {C:/Users/MARCO/Altera Projects/FPGA-Labs/LCD/db/pll_altpll.v}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/FPGA-Labs/LCD/main.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/FPGA-Labs/LCD/pll.vhd}

