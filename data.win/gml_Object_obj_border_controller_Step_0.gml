var border_id = global.screen_border_id;
var return_title = 0;

if (variable_global_exists("chapter_return")) {
	if (global.chapter_return > 0)
		return_title = 1;
}

if (!return_title) {
	if (border_id == "Dynamic" || border_id == "ダイナミック") {
		if (!loaded) {
			border_alpha = 0;
			loaded = 1;
		}
		
		border_fade_value = 0.025;
		
		if (!variable_global_exists("currentroom"))
			global.currentroom = room;
		
		var room_id = room;
		_border_image = global.darkzone ? border_dw_castletown : border_lw_town;
		
		if (room_id == 233 || room_id == 883 || room_id == 243 || room_id == 240)
			_border_image = border_dw_castletown;
		
		if (room_id >= 83 && room_id < 117)
			_border_image = border_dw_cyber;
		
		if (room_id >= 117 && room_id < 159)
			_border_image = border_dw_city;
		
		if ((room_id >= 159 && room_id <= 217) || room_id == 3 || room_id == 2)
			_border_image = border_dw_mansion;
		
		if (room_id == 236) {
			if (global.plot < 200)
				_border_image = border_dw_cyber;
		}
		
		if (room_id == 237)
			_border_image = border_dw_mansion;
		
		if (room_id == 238)
			_border_image = border_dw_city;
		
		if (room_id == 26 || room_id == 878 || room_id == 243 || room_id == 239 || room_id == 232 || room_id == 11 || room_id == 1) {
			border_alpha = 0;
		} else if (room_id == 62 || room_id == 270) {
			border_fade_out = border_alpha > 0;
		} else if (room_id == 32 || room_id == 64 || room_id == 39) {
			border_fade_in = border_alpha < 1;
		} else if (instance_exists(obj_savepoint)) {
			if (global.chapter == 2) {
				if (room_id == 161 && global.plot >= 101)
					border_alpha = 1;
				
				if (room_id == 166)
					border_alpha = 1;
				
				if (room_id == 202)
					border_alpha = 1;
				
				if (room_id == 70)
					border_alpha = 1;
			} else {
				border_alpha = 1;
			}
		}
		
		if (global.chapter == 1) {
			if (room_id == 63) {
				if (instance_exists(obj_unusedclassevent)) {
					if (obj_unusedclassevent.lightsoff == 0)
						border_fade_in = border_alpha < 1;
					else
						border_alpha = 0;
				}
			}
			
			if (room_id == 27) {
				if (instance_exists(obj_krisroom)) {
					if (obj_krisroom.con >= 50)
						border_fade_out = border_alpha > 0;
					else
						border_alpha = (global.plot <= 10) ? 0 : 1;
				}
			}
		}
		
		if (global.chapter == 2) {
			if (room_id == 27) {
				if (i_ex(obj_krisroom)) {
					if (obj_krisroom.show_border)
						border_alpha = 1;
				}
			}
			
			if (room_id == 61) {
				if (i_ex(obj_dw_transition)) {
					border_fade_in = 0;
					border_fade_out = border_alpha > 0;
				} else {
					border_fade_out = 0;
					border_fade_in = border_alpha < 1;
				}
			}
			
			if (room_id == 69) {
				if (i_ex(obj_dw_leave)) {
					if (obj_dw_leave.con >= 10) {
						border_fade_in = 0;
						border_fade_out = border_alpha > 0;
					}
				}
				
				if (i_ex(obj_dw_transition)) {
					if (obj_dw_transition.timer >= 30) {
						border_fade_out = 0;
						border_fade_in = border_alpha < 1;
					}
				}
			}
			
			if (room_id >= 83 && room_id <= 106 && room_id != 100)
				border_fade_in = border_alpha < 1;
			
			if (room_id == 71) {
				if (global.plot <= 10) {
					if (i_ex(obj_ch2_scene6)) {
						if (obj_ch2_scene6.con >= 50)
							border_fade_in = border_alpha < 1;
					}
				} else {
					border_alpha = 1;
				}
			}
			
			if (room_id == 51) {
				if (i_ex(obj_dw_transition))
					border_fade_out = border_alpha > 0;
			}
			
			if (room_id == 100) {
				if (i_ex(obj_ch2_scene11a)) {
					if (obj_ch2_scene11a.hide_border == 1)
						border_fade_out = border_alpha > 0;
				}
			}
			
			if (room_id == 121)
				border_fade_in = border_alpha < 1;
			
			if (room_id == 119) {
				if (global.plot >= 67)
					border_fade_in = border_alpha < 1;
				else
					alpha_border = 0;
			}
			
			if (room_id >= 122 && room_id <= 151 && room_id != 145)
				border_alpha = 1;
			
			if (room_id == 145) {
				if (i_ex(obj_ch2_city08)) {
					if (obj_ch2_city08.circle_zoom_timer >= 50) {
						border_fade_in = 0;
						border_fade_out = border_alpha > 0;
					}
				}
			}
			
			if (room_id == 159) {
				border_alpha = 0;
				border_fade_out = 0;
				border_fade_in = 0;
			}
			
			if (room_id == 161) {
				border_fade_out = 0;
				border_fade_in = border_alpha < 1;
			}
			
			if (room_id == 178) {
				border_fade_value = 0.01;
				border_fade_out = border_alpha > 0;
			}
			
			if (room_id == 173)
				border_fade_in = border_alpha < 1;
			
			if (room_id >= 179 && room_id <= 188)
				border_alpha = 0;
			
			if (room_id == 196)
				border_alpha = 1;
			
			if (room_id == 205)
				border_alpha = 1;
			
			if (room_id == 3)
				border_alpha = 1;
			
			if (room_id == 2)
				border_fade_out = border_alpha > 0;
			
			if (room_id == 207) {
				if (i_ex(obj_ch2_scene27)) {
					if (obj_ch2_scene27.hide_border) {
						border_fade_in = 0;
						border_fade_out = border_alpha > 0;
					} else if (obj_ch2_scene27.show_border) {
						border_fade_out = 0;
						border_fade_in = border_alpha < 1;
					}
				}
			}
			
			if (room_id == 53) {
				if (i_ex(obj_ch2_scene28b)) {
					if (obj_ch2_scene28b.show_border)
						border_fade_in = border_alpha < 1;
				}
			}
			
			if (room_id == 30) {
				if (i_ex(obj_ch2_scene32)) {
					if (obj_ch2_scene32.hide_border) {
						border_fade_in = 0;
						border_fade_out = border_alpha > 0;
					}
				}
			}
		}
		
		if (room_id == 241) {
			if (i_ex(DEVICE_FAILURE)) {
				if (DEVICE_FAILURE.EVENT >= 27 && !instance_exists(obj_writer))
					border_alpha = 0;
			}
		}
		
		if ((room_id == 233 || room_id == 883 || room_id == 243) && global.game_won == 1) {
			_border_image = border_dw_castletown;
			border_alpha = 1;
		}
		
		global.disable_border = border_alpha != 1;
	} else if (border_id == "Simple" || border_id == "シンプル") {
		var room_id = global.currentroom;
		
		if (instance_exists(obj_savepoint))
			border_alpha = 1;
		
		if (room_id == 244) {
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
	border_fade_in = 0;
	border_fade_value = 0.05;
	border_fade_out = border_alpha > 0;
	global.disable_border = border_alpha != 1;
}
