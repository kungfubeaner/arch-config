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
	W = mp.get_property_number("dwidth")
	nscale = 464 / W
	mp.set_property_number("window-scale", nscale)
end

function window_width_60percent()
	W = mp.get_property_number("dwidth")
	nscale = (1600 * 0.6) / W
	mp.set_property_number("window-scale", nscale)
end

mp.register_script_message("Shrink_Window", shrink_window)
mp.register_script_message("Grow_Window", grow_window)
mp.register_script_message("Window_Width_Preset", window_width_preset)
mp.register_script_message("Window_Width_60percent", window_width_60percent)
