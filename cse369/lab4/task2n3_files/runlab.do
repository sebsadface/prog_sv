# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
vlog "./lab4.sv"
vlog "./lab4_tb.sv"
vlog "./lab3.sv"
vlog "./pawn.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work lab4_tb

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do lab4_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
