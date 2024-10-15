transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/micha/OneDrive/Documents/GitHub/ENSC-252/lab3/Part3.vhd}
vcom -93 -work work {C:/Users/micha/OneDrive/Documents/GitHub/ENSC-252/lab3/SegDecoder.vhd}

