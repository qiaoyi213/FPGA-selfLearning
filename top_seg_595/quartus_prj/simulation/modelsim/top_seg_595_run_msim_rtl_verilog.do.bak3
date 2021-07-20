transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/rtl {D:/FPGA-selfLearning/top_seg_595/rtl/top_seg_595.v}
vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/rtl {D:/FPGA-selfLearning/top_seg_595/rtl/seg_dynamic.v}
vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/rtl {D:/FPGA-selfLearning/top_seg_595/rtl/seg_595_dynamic.v}
vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/rtl {D:/FPGA-selfLearning/top_seg_595/rtl/hc595_ctrl.v}
vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/rtl {D:/FPGA-selfLearning/top_seg_595/rtl/data_gen.v}
vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/rtl {D:/FPGA-selfLearning/top_seg_595/rtl/bcd_8421.v}

vlog -vlog01compat -work work +incdir+D:/FPGA-selfLearning/top_seg_595/quartus_prj/../sim {D:/FPGA-selfLearning/top_seg_595/quartus_prj/../sim/tb_top_seg_595.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_top_seg_595

add wave *
view structure
view signals
run 1 us
