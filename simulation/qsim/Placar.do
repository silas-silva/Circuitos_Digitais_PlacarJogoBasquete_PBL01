onerror {exit -code 1}
vlib work
vcom -work work Placar.vho
vcom -work work decod7segs.vwf.vht
vsim -c -t 1ps -L maxii -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.decod7segs_vhd_vec_tst
vcd file -direction Placar.msim.vcd
vcd add -internal decod7segs_vhd_vec_tst/*
vcd add -internal decod7segs_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
