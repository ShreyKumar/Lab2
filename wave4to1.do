# Set the working dir, where all compiled Verilog goes.

vlibwork

# Compile all Verilog modules in mux.v to working dir;
# could also have multiple Verilog files.
# The timescale argument defines default time unit
# (used when no unit is specified), while the second number
# defines precision (all times are rounded to this value)


vlog−timescale 1ns/1ns mux4to1.v

# Load simulation using mux as the top level simulation module.
vsim mux4to1

# Log all signals and add some signals to waveform window.
log{/*}

# add wave {/*}would add all items in top level simulation module.
add wave{/*}

# test 1
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 0
run10ns

# test 2
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 0
run10ns

# test 3
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 0
force {SW[8]} 0
force {SW[9]} 1
run10ns

# test 4
force {SW[0]} 0
force {SW[1]} 0
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 0
run10ns

# test 5
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 0
force {SW[9]} 0
run10ns

# test 6
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 0
force {SW[9]} 1
run10ns

# test 7
force {SW[0]} 0
force {SW[1]} 1
force {SW[2]} 0
force {SW[3]} 0
force {SW[8]} 1
force {SW[9]} 1
run10ns

# test 8
force {SW[0]} 1
force {SW[1]} 1
force {SW[2]} 1
force {SW[3]} 1
force {SW[8]} 1
force {SW[9]} 1
run10ns

