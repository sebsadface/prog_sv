onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /playfield_tb/clk
add wave -noupdate /playfield_tb/reset
add wave -noupdate /playfield_tb/L
add wave -noupdate /playfield_tb/R
add wave -noupdate -expand -group LEDR {/playfield_tb/led[8]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[7]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[6]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[5]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[4]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[3]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[2]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[1]}
add wave -noupdate -expand -group LEDR {/playfield_tb/led[0]}
add wave -noupdate -expand -group winner {/playfield_tb/winner[1]}
add wave -noupdate -expand -group winner {/playfield_tb/winner[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2944 ps} 0}
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
WaveRestoreZoom {2800 ps} {3800 ps}
