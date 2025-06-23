function scr_controls_default() {
	global.button0 = gp_face1;
	global.button1 = gp_face2;
	global.button2 = gp_face4;
	
	if (os_type == os_ps4) {
		if (global.lang == "ja") {
			global.button0 = gp_face2;
			global.button1 = gp_face1;
		} else {
			global.button0 = gp_face1;
			global.button1 = gp_face2;
		}
		
		global.button2 = gp_face4;
	} else if (os_type == os_switch) {
		global.button0 = gp_face2;
		global.button1 = gp_face1;
		global.button2 = gp_face4;
	}
	
	global.default_button0 = global.button0;
	global.default_button1 = global.button1;
	global.default_button2 = global.button2;
	global.input_k[0] = vk_down;
	global.input_k[1] = vk_right;
	global.input_k[2] = vk_up;
	global.input_k[3] = vk_left;
	global.input_k[4] = ord("Z");
	global.input_k[5] = ord("X");
	global.input_k[6] = ord("C");
	global.input_k[7] = vk_enter;
	global.input_k[8] = vk_shift;
	global.input_k[9] = vk_control;
	global.input_g[0] = gp_padd;
	global.input_g[1] = gp_padr;
	global.input_g[2] = gp_padu;
	global.input_g[3] = gp_padl;
	global.input_g[4] = global.button0;
	global.input_g[5] = global.button1;
	global.input_g[6] = global.button2;
	global.input_g[7] = 999;
	global.input_g[8] = 999;
	global.input_g[9] = 999;
	
	with (obj_gamecontroller)
		gamepad_shoulderlb_reassign = 0;
}
