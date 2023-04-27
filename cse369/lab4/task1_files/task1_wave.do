onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/task1_tb/SW[3]}
add wave -noupdate {/task1_tb/SW[2]}
add wave -noupdate {/task1_tb/SW[1]}
add wave -noupdate {/task1_tb/SW[0]}
add wave -noupdate {/task1_tb/HEX0[6]}
add wave -noupdate {/task1_tb/HEX0[5]}
add wave -noupdate {/task1_tb/HEX0[4]}
add wave -noupdate {/task1_tb/HEX0[3]}
add wave -noupdate {/task1_tb/HEX0[2]}
add wave -noupdate {/task1_tb/HEX0[1]}
add wave -noupdate {/task1_tb/HEX0[0]}
add wave -noupdate {/task1_tb/SW[7]}
add wave -noupdate {/task1_tb/SW[6]}
add wave -noupdate {/task1_tb/SW[5]}
add wave -noupdate {/task1_tb/SW[4]}
add wave -noupdate {/task1_tb/HEX1[6]}
add wave -noupdate {/task1_tb/HEX1[5]}
add wave -noupdate {/task1_tb/HEX1[4]}
add wave -noupdate {/task1_tb/HEX1[3]}
add wave -noupdate {/task1_tb/HEX1[2]}
add wave -noupdate {/task1_tb/HEX1[1]}
add wave -noupdate {/task1_tb/HEX1[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {23 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {168 ps}
