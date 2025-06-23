function scr_getbuttonsprite_ch1(arg0, arg1) {
	var control = arg0;
	var isString = arg1;
	var button = noone;
	var is_dualshock = os_type == os_ps4 || obj_gamecontroller.gamepad_type == 1;
	var button_sprite = -4;
	
	if (isString) {
		if (control == "A") {
			button_sprite = button_xbox_left_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_left_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_left_ch1;
			
			return button_sprite;
		}
		
		if (control == "D") {
			button_sprite = button_xbox_right_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_right_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_right_ch1;
			
			return button_sprite;
		}
		
		if (control == "W") {
			button_sprite = button_xbox_up_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_up_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_up_ch1;
			
			return button_sprite;
		}
		
		if (control == "S") {
			button_sprite = button_xbox_down_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_down_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_down_ch1;
			
			return button_sprite;
		}
		
		if (control == "Z")
			button = global.button0;
		
		if (control == "X")
			button = global.button1;
		
		if (control == "C")
			button = global.button2;
	} else {
		button = control;
		
		if (control == gp_padl) {
			button_sprite = button_xbox_left_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_left_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_left_ch1;
			
			return button_sprite;
		}
		
		if (control == gp_padr) {
			button_sprite = button_xbox_right_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_right_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_right_ch1;
			
			return button_sprite;
		}
		
		if (control == gp_padu) {
			button_sprite = button_xbox_up_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_up_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_up_ch1;
			
			return button_sprite;
		}
		
		if (control == gp_padd) {
			button_sprite = button_xbox_down_ch1;
			
			if (os_type == os_switch)
				button_sprite = button_switch_down_0_ch1;
			else if (is_dualshock)
				button_sprite = button_ps4_dpad_down_ch1;
			
			return button_sprite;
		}
	}
	
	if (button == gp_face1) {
		button_sprite = button_xbox_a_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_cross_0_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_b_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_face2) {
		button_sprite = button_xbox_b_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_circle_0_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_a_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_face3) {
		button_sprite = button_xbox_x_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_square_0_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_y_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_face4) {
		button_sprite = button_xbox_y_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_triangle_0_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_x_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_shoulderl) {
		button_sprite = button_xbox_left_bumper_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_l1_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_l_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_shoulderlb) {
		button_sprite = button_xbox_left_trigger_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_l2_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_zl_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_shoulderr) {
		button_sprite = button_xbox_right_bumper_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_r1_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_r_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_shoulderrb) {
		button_sprite = button_xbox_right_trigger_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_r2_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_zr_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_stickl) {
		button_sprite = button_xbox_left_stick_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_l3_0_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_lStickClick_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_stickr) {
		button_sprite = button_xbox_right_stick_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_r3_0_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_rStickClick_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_select) {
		button_sprite = button_xbox_menu_ch1;
		
		if (is_dualshock)
			button_sprite = button_ps4_touchpad_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_minus_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_start) {
		button_sprite = button_xbox_share_ch1;
		
		if (is_dualshock)
			return button_ps4_options;
		
		if (os_type == os_switch)
			button_sprite = button_switch_plus_0_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_padl) {
		button_sprite = button_xbox_left_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_left_0_ch1;
		else if (is_dualshock)
			button_sprite = button_ps4_dpad_left_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_padr) {
		button_sprite = button_xbox_right_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_right_0_ch1;
		else if (is_dualshock)
			button_sprite = button_ps4_dpad_right_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_padu) {
		button_sprite = button_xbox_up_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_up_0_ch1;
		else if (is_dualshock)
			button_sprite = button_ps4_dpad_up_ch1;
		
		return button_sprite;
	}
	
	if (button == gp_padd) {
		button_sprite = button_xbox_down_ch1;
		
		if (os_type == os_switch)
			button_sprite = button_switch_down_0_ch1;
		else if (is_dualshock)
			button_sprite = button_ps4_dpad_down_ch1;
		
		return button_sprite;
	}
	
	return button_sprite;
}
