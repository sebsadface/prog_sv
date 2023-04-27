onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group UPC {/lab4_tb/SW[3]}
add wave -noupdate -expand -group UPC {/lab4_tb/SW[2]}
add wave -noupdate -expand -group UPC {/lab4_tb/SW[1]}
add wave -noupdate -group Mark {/lab4_tb/SW[0]}
add wave -noupdate -group Discounted {/lab4_tb/LEDR[1]}
add wave -noupdate -group Stolen {/lab4_tb/LEDR[0]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[6]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[5]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[4]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[3]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[2]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[1]}
add wave -noupdate -expand -group HEX0 {/lab4_tb/HEX0[0]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[6]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[5]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[4]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[3]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[2]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[1]}
add wave -noupdate -expand -group HEX1 {/lab4_tb/HEX1[0]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[6]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[5]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[4]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[3]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[2]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[1]}
add wave -noupdate -expand -group HEX2 {/lab4_tb/HEX2[0]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[6]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[5]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[4]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[3]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[2]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[1]}
add wave -noupdate -expand -group HEX3 {/lab4_tb/HEX3[0]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[6]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[5]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[4]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[3]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[2]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[1]}
add wave -noupdate -expand -group HEX4 {/lab4_tb/HEX4[0]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[6]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[5]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[4]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[3]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[2]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[1]}
add wave -noupdate -expand -group HEX5 {/lab4_tb/HEX5[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {62 ps} 0}
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
