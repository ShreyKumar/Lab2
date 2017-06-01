

vlib work

vlog -timescale 1ns/1ns sevenseg.v

vsim sevenseg

log {/*}

add wave {/*}


# test 1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
run 10ns

