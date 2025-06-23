global.time += 1;

if (scr_debug()) {
	if (scr_84_debug(1))
		exit;
	
	if (keyboard_check_pressed(vk_f10)) {
		screen_name = string(screenshot_number) + "_shot.png";
		screen_save(screen_name);
		screenshot_number += 1;
	}
}

if (keyboard_check(vk_escape)) {
	if (quit_timer < 0)
		quit_timer = 0;
	
	quit_timer += 1;
	
	if (quit_timer >= 30)
		game_end();
} else {
	quit_timer -= 2;
}

if (keyboard_check_pressed(vk_f4))
	fullscreen_toggle = 1;

if (fullscreen_toggle == 1) {
	fullscreen_toggle = 0;
	
	if (window_get_fullscreen()) {
		window_set_fullscreen(false);
		ini_open("true_config.ini");
		ini_write_real("SCREEN", "FULLSCREEN", 0);
		ini_close();
	} else {
		window_set_fullscreen(true);
		ini_open("true_config.ini");
		ini_write_real("SCREEN", "FULLSCREEN", 1);
		ini_close();
	}
}

if (window_center_toggle == 2) {
	window_center();
	window_center_toggle = 0;
}

if (window_center_toggle == 1)
	window_center_toggle = 2;

for (i = 0; i < 10; i += 1) {
	global.input_released[i] = 0;
	global.input_pressed[i] = 0;
}

gamepad_check_timer += 1;

if (gamepad_check_timer >= 90) {
	if (gamepad_is_connected(0)) {
		gamepad_active = 1;
		gamepad_id = 0;
	} else {
		gamepad_active = 0;
	}
	
	gamepad_check_timer = 0;
}

if (gamepad_active == 1) {
	for (i = 0; i < 4; i += 1) {
		if (keyboard_check(global.input_k[i]) || gamepad_button_check(0, global.input_g[i]) || scr_gamepad_axis_check(0, i)) {
			if (global.input_held[i] == 0)
				global.input_pressed[i] = 1;
			
			global.input_held[i] = 1;
		} else {
			if (global.input_held[i] == 1)
				global.input_released[i] = 1;
			
			global.input_held[i] = 0;
		}
	}
	
	for (i = 4; i < 10; i += 1) {
		if (keyboard_check(global.input_k[i]) || gamepad_button_check(0, global.input_g[i])) {
			if (global.input_held[i] == 0)
				global.input_pressed[i] = 1;
			
			global.input_held[i] = 1;
		} else {
			if (global.input_held[i] == 1)
				global.input_released[i] = 1;
			
			global.input_held[i] = 0;
		}
	}
} else {
	for (i = 0; i < 10; i += 1) {
		if (keyboard_check(global.input_k[i])) {
			if (global.input_held[i] == 0)
				global.input_pressed[i] = 1;
			
			global.input_held[i] = 1;
		} else {
			if (global.input_held[i] == 1)
				global.input_released[i] = 1;
			
			global.input_held[i] = 0;
		}
	}
}
