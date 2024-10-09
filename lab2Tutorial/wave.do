onerror {resume}
quietly set dataset_list [list sim vsim]
if {[catch {datasetcheck $dataset_list}]} {abort}
quietly WaveActivateNextPane {} 0
add wave -noupdate /oddthing/x2
add wave -noupdate /oddthing/x1
add wave -noupdate /oddthing/x3
add wave -noupdate /oddthing/x4
add wave -noupdate sim:/oddthing/f
add wave -noupdate sim:/oddthing/f
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {511527 ps} 0}
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
configure wave -gridperiod 20
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {840 ns}
view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ps -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x2 
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x3 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x4 
WaveCollapseAll -1
wave clipboard restore
