var border_id = global.screen_border_id;
var return_title = false;

if (variable_global_exists("chapter_return")) {
	if (global.chapter_return > 0)
		return_title = true;
}

if (!return_title) {
	if (border_id == "Dynamic" || border_id == "ダイナミック") {
		if (!loaded) {
			border_alpha = 0;
			loaded = true;
		}
		
		border_fade_value = 0.025;
		
		if (!variable_global_exists("currentroom"))
			global.currentroom = room;
		
		var room_id = room;
		_border_image = global.darkzone ? border_dw_castletown : border_lw_town;
		
		if (room_id == 234 || room_id == 886 || room_id == 244 || room_id == 241)
			_border_image = border_dw_castletown;
		
		if (room_id >= 84 && room_id < 118)
			_border_image = border_dw_cyber;
		
		if (room_id >= 118 && room_id < 160)
			_border_image = border_dw_city;
		
		if ((room_id >= 160 && room_id <= 218) || room_id == 4 || room_id == 3)
			_border_image = border_dw_mansion;
		
		if (room_id == 237) {
			if (global.plot < 200)
				_border_image = border_dw_cyber;
		}
		
		if (room_id == 238)
			_border_image = border_dw_mansion;
		
		if (room_id == 239)
			_border_image = border_dw_city;
		
		if (room_id == 27 || room_id == 881 || room_id == 244 || room_id == 240 || room_id == 233 || room_id == 12 || room_id == 2) {
			border_alpha = 0;
		} else if (room_id == 63 || room_id == 271) {
			border_fade_out = border_alpha > 0;
		} else if (room_id == 33 || room_id == 65 || room_id == 40) {
			border_fade_in = border_alpha < 1;
		} else if (instance_exists(obj_savepoint)) {
			if (global.chapter == 2) {
				if (room_id == 162 && global.plot >= 101)
					border_alpha = 1;
				
				if (room_id == 167)
					border_alpha = 1;
				
				if (room_id == 203)
					border_alpha = 1;
				
				if (room_id == 71)
					border_alpha = 1;
			} else {
				border_alpha = 1;
			}
		}
		
		if (global.chapter == 1) {
			if (room_id == 64) {
				if (instance_exists(obj_unusedclassevent)) {
					if (obj_unusedclassevent.lightsoff == 0)
						border_fade_in = border_alpha < 1;
					else
						border_alpha = 0;
				}
			}
			
			if (room_id == 28) {
				if (instance_exists(obj_krisroom)) {
					if (obj_krisroom.con >= 50)
						border_fade_out = border_alpha > 0;
					else
						border_alpha = (global.plot <= 10) ? 0 : 1;
				}
			}
		}
		
		if (global.chapter == 2) {
			if (room_id == 28) {
				if (i_ex(obj_krisroom)) {
					if (obj_krisroom.show_border)
						border_alpha = 1;
				}
			}
			
			if (room_id == 62) {
				if (i_ex(obj_dw_transition)) {
					border_fade_in = false;
					border_fade_out = border_alpha > 0;
				} else {
					border_fade_out = false;
					border_fade_in = border_alpha < 1;
				}
			}
			
			if (room_id == 70) {
				if (i_ex(obj_dw_leave)) {
					if (obj_dw_leave.con >= 10) {
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
				}
				
				if (i_ex(obj_dw_transition)) {
					if (obj_dw_transition.timer >= 30) {
						border_fade_out = false;
						border_fade_in = border_alpha < 1;
					}
				}
			}
			
			if (room_id >= 84 && room_id <= 107 && room_id != 101)
				border_fade_in = border_alpha < 1;
			
			if (room_id == 72) {
				if (global.plot <= 10) {
					if (i_ex(obj_ch2_scene6)) {
						if (obj_ch2_scene6.con >= 50)
							border_fade_in = border_alpha < 1;
					}
				} else {
					border_alpha = 1;
				}
			}
			
			if (room_id == 52) {
				if (i_ex(obj_dw_transition))
					border_fade_out = border_alpha > 0;
			}
			
			if (room_id == 101) {
				if (i_ex(obj_ch2_scene11a)) {
					if (obj_ch2_scene11a.hide_border == true)
						border_fade_out = border_alpha > 0;
				}
			}
			
			if (room_id == 122)
				border_fade_in = border_alpha < 1;
			
			if (room_id == 120) {
				if (global.plot >= 67)
					border_fade_in = border_alpha < 1;
				else
					alpha_border = 0;
			}
			
			if (room_id >= 123 && room_id <= 152 && room_id != 146)
				border_alpha = 1;
			
			if (room_id == 146) {
				if (i_ex(obj_ch2_city08)) {
					if (obj_ch2_city08.circle_zoom_timer >= 50) {
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
				}
			}
			
			if (room_id == 160) {
				border_alpha = 0;
				border_fade_out = false;
				border_fade_in = false;
			}
			
			if (room_id == 162) {
				border_fade_out = false;
				border_fade_in = border_alpha < 1;
			}
			
			if (room_id == 179) {
				border_fade_value = 0.01;
				border_fade_out = border_alpha > 0;
			}
			
			if (room_id == 174)
				border_fade_in = border_alpha < 1;
			
			if (room_id >= 180 && room_id <= 189)
				border_alpha = 0;
			
			if (room_id == 197)
				border_alpha = 1;
			
			if (room_id == 206)
				border_alpha = 1;
			
			if (room_id == 4)
				border_alpha = 1;
			
			if (room_id == 3)
				border_fade_out = border_alpha > 0;
			
			if (room_id == 208) {
				if (i_ex(obj_ch2_scene27)) {
					if (obj_ch2_scene27.hide_border) {
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					} else if (obj_ch2_scene27.show_border) {
						border_fade_out = false;
						border_fade_in = border_alpha < 1;
					}
				}
			}
			
			if (room_id == 54) {
				if (i_ex(obj_ch2_scene28b)) {
					if (obj_ch2_scene28b.show_border)
						border_fade_in = border_alpha < 1;
				}
			}
			
			if (room_id == 31) {
				if (i_ex(obj_ch2_scene32)) {
					if (obj_ch2_scene32.hide_border) {
						border_fade_in = false;
						border_fade_out = border_alpha > 0;
					}
				}
			}
		}
		
		if (room_id == 242) {
			if (i_ex(DEVICE_FAILURE)) {
				if (DEVICE_FAILURE.EVENT >= 27 && !instance_exists(obj_writer))
					border_alpha = 0;
			}
		}
		
		if ((room_id == 234 || room_id == 886 || room_id == 244) && global.game_won == 1) {
			_border_image = border_dw_castletown;
			border_alpha = 1;
		}
		
		global.disable_border = border_alpha != 1;
	} else if (border_id == "Simple" || border_id == "シンプル") {
		var room_id = global.currentroom;
		
		if (instance_exists(obj_savepoint))
			border_alpha = 1;
		
		if (room_id == 245) {
			if (instance_exists(obj_credits)) {
				if (obj_credits.timer >= 1560) {
					border_fade_value = 0.01;
					border_fade_out = border_alpha > 0;
				}
			}
		}
		
		global.disable_border = border_alpha != 1;
	}
}

if (return_title) {
	border_fade_in = false;
	border_fade_value = 0.05;
	border_fade_out = border_alpha > 0;
	global.disable_border = border_alpha != 1;
}
