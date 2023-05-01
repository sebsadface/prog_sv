onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Clock /runwayLights_tb/clk
add wave -noupdate -expand -group Reset /runwayLights_tb/reset
add wave -noupdate -expand -group {SW[1]} /runwayLights_tb/w1
add wave -noupdate -expand -group {SW[0]} /runwayLights_tb/w0
add wave -noupdate -expand -group {LEDR[2]} {/runwayLights_tb/out[2]}
add wave -noupdate -expand -group {LEDR[1]} {/runwayLights_tb/out[1]}
add wave -noupdate -expand -group {LEDR[0]} {/runwayLights_tb/out[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {807 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 180
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
WaveRestoreZoom {0 ps} {1313 ps}
