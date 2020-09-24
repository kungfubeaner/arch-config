function shrink_window()
	scale = mp.get_property_number("current-window-scale")
	H = mp.get_property_number("dheight")
	nscale = ((scale * H) - 10) / H
	mp.set_property_number("window-scale", nscale)
end

function grow_window()
	scale = mp.get_property_number("current-window-scale")
	H = mp.get_property_number("dheight")
	nscale = ((scale * H) + 10) / H
	mp.set_property_number("window-scale", nscale)
end

function window_width_preset()
	--W = mp.get_property_number("dwidth")
	--nscale = 474 / W
	--mp.set_property_number("window-scale", nscale)
	os.execute('xdotool getactivewindow windowsize 29% 29%')
	os.execute('xdotool getactivewindow windowsize 470 x')
	os.execute('xdotool getactivewindow windowmove 1115 140')
end

function window_width_60percent()
	--W = mp.get_property_number("dwidth")
	--nscale = (1600 * 0.7) / W
	--mp.set_property_number("window-scale", nscale)
	os.execute('xdotool getactivewindow windowsize 70% 70%')
	W = mp.get_property_number("dwidth")
	H = mp.get_property_number("dheight")
	X = math.abs((1600 * 0.5) - (W * 0.5)) + 70
	Y = math.abs((900 * 0.5) - (H * 0.5)) + 60
	os.execute('xdotool getactivewindow windowmove ' .. X .. ' ' .. Y)
end

mp.register_script_message("Shrink_Window", shrink_window)
mp.register_script_message("Grow_Window", grow_window)
mp.register_script_message("Window_Width_Preset", window_width_preset)
mp.register_script_message("Window_Width_60percent", window_width_60percent)
