function scr_draw_screen_border_ch1(arg0) {
	var border_id = arg0;
	var return_title = 0;
	
	if (variable_global_exists("chapter_return")) {
		if (global.chapter_return > 0)
			return_title = 1;
	}
	
	if (!return_title) {
		draw_enable_alphablend_ch1(0);
		
		if (border_id == "Dynamic" || border_id == "ダイナミック") {
			if (!loaded) {
				obj_time_ch1.border_alpha = 0;
				loaded = 1;
			}
			
			obj_time_ch1.border_fade_value = 0.025;
			var room_id = room;
			var _border_image = global.darkzone ? border_dark_ch1 : border_light_ch1;
			
			if (room_id == 412 || room_id == 1638 || room_id == 419 || room_id == 417)
				_border_image = border_dark_ch1;
			
			if (room_id == 281 || room_id == 1634 || room_id == 419 || room_id == 425 || room_id == 415 || room_id == 411 || room_id == 315 || room_id == 320)
				obj_time_ch1.border_alpha = 0;
			else if (room_id == 312 || room_id == 410)
				obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0;
			else if (room_id == 287 || room_id == 325 || room_id == 294)
				obj_time_ch1.border_fade_in = obj_time_ch1.border_alpha < 1;
			else if (instance_exists(obj_savepoint_ch1))
				obj_time_ch1.border_alpha = 1;
			
			if (room_id == 313) {
				if (instance_exists(obj_unusedclassevent_ch1)) {
					if (obj_unusedclassevent_ch1.lightsoff == 0)
						obj_time_ch1.border_fade_in = obj_time_ch1.border_alpha < 1;
					else
						obj_time_ch1.border_alpha = 0;
				}
			}
			
			if (room_id == 282) {
				if (instance_exists(obj_krisroom_ch1)) {
					if (obj_krisroom_ch1.con >= 50)
						obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0;
					else
						obj_time_ch1.border_alpha = (global.plot <= 10) ? 0 : 1;
				}
			}
			
			if (room_id == 418) {
				if (instance_exists(DEVICE_FAILURE_ch1)) {
					if (DEVICE_FAILURE_ch1.EVENT >= 27 && !instance_exists(obj_writer_ch1))
						obj_time_ch1.border_alpha = 0;
				}
			}
			
			var game_won = 0;
			
			if (ossafe_file_exists_ch1("filech1_3"))
				game_won = 1;
			
			if (ossafe_file_exists_ch1("filech1_4"))
				game_won = 1;
			
			if (ossafe_file_exists_ch1("filech1_5"))
				game_won = 1;
			
			if ((room_id == 412 || room_id == 1638 || room_id == 419) && game_won == 1) {
				_border_image = border_dark_ch1;
				obj_time_ch1.border_alpha = 1;
			}
			
			scr_draw_background_ps4_ch1(_border_image, 0, 0);
			global.disable_border = obj_time_ch1.border_alpha != 1;
		} else if (border_id == "Simple" || border_id == "シンプル") {
			var room_id = global.currentroom;
			
			if (instance_exists(obj_savepoint_ch1))
				obj_time_ch1.border_alpha = 1;
			
			if (room_id == 420) {
				if (instance_exists(obj_credits_ch1)) {
					if (obj_credits_ch1.timer >= 1560) {
						obj_time_ch1.border_fade_value = 0.01;
						obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0;
					}
				}
			}
			
			scr_draw_background_ps4_ch1(bg_border_line_1080_ch1, 0, 0);
			global.disable_border = obj_time_ch1.border_alpha != 1;
		}
		
		draw_set_alpha(1);
		draw_enable_alphablend_ch1(1);
	}
	
	if (return_title) {
		obj_time_ch1.border_fade_in = 0;
		obj_time_ch1.border_fade_value = 0.05;
		obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0;
		global.disable_border = obj_time_ch1.border_alpha != 1;
	}
}
