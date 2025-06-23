quit_timer = 0;
keyboard_active = 1;
gamepad_active = 1;
gamepad_check_timer = 0;
gamepad_id = 0;
axis_value = 0.4;
fullscreen_toggle = 0;
window_center_toggle = 0;
screenshot_number = 0;

if (instance_number(obj_time) > 1) {
	instance_destroy();
} else {
	display_height = display_get_height();
	display_width = display_get_width();
	window_size_multiplier = 1;
	
	for (_ww = 2; _ww < 6; _ww += 1) {
		if (display_width > (640 * _ww) && display_height > (480 * _ww))
			window_size_multiplier = _ww;
	}
	
	if (window_size_multiplier > 1) {
		window_set_size(640 * window_size_multiplier, 480 * window_size_multiplier);
		window_center_toggle = 1;
	}
	
	scr_controls_default();
	scr_ascii_input_names();
	
	for (i = 0; i < 10; i += 1) {
		global.input_pressed[i] = 0;
		global.input_held[i] = 0;
		global.input_released[i] = 0;
	}
}
