vlog -work work mux8x4Teste.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate_ver -L altera_lnsim_ver work.mux8pra4_vlg_vec_tst -voptargs="+acc"
add wave /*
run -all
