onerror {quit -f}
vlib work
vlog -work work jkffde.vo
vlog -work work jkffde.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.jkffde_vlg_vec_tst
vcd file -direction jkffde.msim.vcd
vcd add -internal jkffde_vlg_vec_tst/*
vcd add -internal jkffde_vlg_vec_tst/i1/*
add wave /*
run -all
