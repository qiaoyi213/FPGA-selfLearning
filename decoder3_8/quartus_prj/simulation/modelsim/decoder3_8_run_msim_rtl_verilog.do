transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/decoder3_8/rtl {D:/FPGA-selfLearning/decoder3_8/rtl/decoder3_8.v}

vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/decoder3_8/quartus_prj/../sim {D:/FPGA-selfLearning/decoder3_8/quartus_prj/../sim/tb_decoder3_8.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_decoder3_8

add wave *
view structure
view signals
run 1 us
