source $XDG_RUNTIME_DIR/xcolors

# tty colors
if [[ "$TERM" = "linux" ]]; then
	echo -en "\e]P0${xres_color0:1}"
	echo -en "\e]P8${xres_color8:1}"
	echo -en "\e]P1${xres_color1:1}"
	echo -en "\e]P9${xres_color9:1}"
	echo -en "\e]P2${xres_color2:1}"
	echo -en "\e]PA${xres_color10:1}"
	echo -en "\e]P3${xres_color3:1}"
	echo -en "\e]PB${xres_color11:1}"
	echo -en "\e]P4${xres_color4:1}"
	echo -en "\e]PC${xres_color12:1}"
	echo -en "\e]P5${xres_color5:1}"
	echo -en "\e]PD${xres_color13:1}"
	echo -en "\e]P6${xres_color6:1}"
	echo -en "\e]PE${xres_color14:1}"
	echo -en "\e]P7${xres_color7:1}"
	echo -en "\e]PF${xres_color15:1}"
	clear
fi
