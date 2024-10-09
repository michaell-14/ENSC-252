view wave 
wave clipboard store
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ps -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 400ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x2 
wave create -driver freeze -pattern clock -initialvalue 0 -period 800ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x1 
wave create -driver freeze -pattern clock -initialvalue 0 -period 200ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x3 
wave create -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 800ns sim:/oddthing/x4 
WaveCollapseAll -1
wave clipboard restore
