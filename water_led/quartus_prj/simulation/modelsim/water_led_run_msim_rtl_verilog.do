transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/water_led/rtl {D:/FPGA-selfLearning/water_led/rtl/water_led.v}

vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/water_led/quartus_prj/../sim {D:/FPGA-selfLearning/water_led/quartus_prj/../sim/tb_water_led.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_water_led

add wave *
view structure
view signals
run 1 us
