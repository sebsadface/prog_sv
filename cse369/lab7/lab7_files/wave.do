onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /LFSR_tb/clk
add wave -noupdate /LFSR_tb/reset
add wave -noupdate -radix unsigned /LFSR_tb/Q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {50453 ps} 0}
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
WaveRestoreZoom {50400 ps} {51400 ps}
