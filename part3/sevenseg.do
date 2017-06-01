

vlib work

vlog -timescale 1ns/1ns sevenseg.v

vsim sevenseg

log {/*}

add wave {/*}


# test 1
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 0
run 10ns

# test 2
force {SW[3]} 0
force {SW[2]} 0
force {SW[1]} 0
force {SW[0]} 1
run 10ns

# test 3
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 0
force {SW[0]} 0
run 10ns

# test 4
force {SW[3]} 0
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
run 10ns

# test 5
force {SW[3]} 1
force {SW[2]} 0
force {SW[1]} 1
force {SW[0]} 1
run 10ns

# test 6
force {SW[3]} 1
force {SW[2]} 1
force {SW[1]} 1
force {SW[0]} 1
run 10ns
