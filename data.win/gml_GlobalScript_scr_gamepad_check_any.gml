function scr_gamepad_check_any() {
	var any_input;
	
	if (!i_ex(obj_gamecontroller)) {
		return 0;
	} else {
		any_input = 0;
		
		for (var i = 0; i < 4; i += 1) {
			if (scr_gamepad_axis_check(obj_gamecontroller.gamepad_id, i)) {
				any_input = 1;
				break;
			}
		}
		
		for (var i = 0; i < 10; i += 1) {
			if (gamepad_button_check(obj_gamecontroller.gamepad_id, global.input_g[i])) {
				any_input = 1;
				break;
			}
		}
	}
	
	return any_input;
}
