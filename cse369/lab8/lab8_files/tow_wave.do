onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tow_tb/clk
add wave -noupdate {/tow_tb/SW[9]}
add wave -noupdate {/tow_tb/KEY[3]}
add wave -noupdate {/tow_tb/KEY[0]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[9]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[8]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[7]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[6]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[5]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[4]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[3]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[2]}
add wave -noupdate -expand -group LEDR {/tow_tb/LEDR[1]}
add wave -noupdate /tow_tb/HEX0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {281 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 50
configure wave -gridperiod 100
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2862 ps}
