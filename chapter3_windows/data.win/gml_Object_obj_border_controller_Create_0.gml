loaded = false;
border_fade_out = false;
border_fade_in = false;
border_alpha = 1;
border_fade_value = 0.025;
overlay_alpha = 1;
overlay_alpha_target = 1;
overlay_fade_speed = 0.025;
overlay_color = 0;
_border_image = border_lw_town;
_border_image_temp = _border_image;
_border_image_temp_alpha = 0;
_border_image_temp_alpha_amount = 0.025;
ww = window_get_width();
wh = window_get_height();
sw = surface_get_width(application_surface);
sh = surface_get_height(application_surface);
var scale_w = ww / sw;
var scale_h = wh / sh;
custom_effect = -1;
custom_effect_con = 0;
custom_effect_alpha = 0;
custom_effect_alpha_target = 0;
custom_effect_color = 0;
custom_effect_fade_speed = 0.2;

if (scr_is_switch_os() && wh == 720)
	global.window_scale = 4/3;
else
	global.window_scale = floor(min(scale_w, scale_h));

is_border_simple = function() {
	return global.screen_border_id == "Simple" || global.screen_border_id == "シンプル";
};

init_border = function() {
	var border_id = global.screen_border_id;
	
	if (border_id == "Dynamic" || border_id == "ダイナミック") {
		var room_id = room;
		var room_border = scr_get_border(room_id);
		
		if (global.tempflag[95] == 1) {
			global.tempflag[95] = 0;
			set_border(room_border, 1);
			show_border(0.05);
		} else {
			set_border(room_border);
		}
		
		if (room_id == 67 || room_id == 1534 || room_id == 75) {
			stop_custom_effect();
			
			if (scr_completed_chapter_any_slot(global.chapter)) {
				set_border(3663, 1);
				show_border(0.08);
			} else {
				hide_border();
			}
		} else if (room_id == 1 || room_id == 71 || room_id == 66 || room_id == 2 || room_id == 243 || room_id == 73) {
			hide_border();
			stop_custom_effect();
		} else if (room_id == 50 || room_id == 82) {
			hide_border(0.025);
		} else if (room_id == 20 || room_id == 56 || room_id == 27) {
			show_border(1);
		}
		
		if (room_id == 73 || room_id == 71) {
			overlay_alpha = 1;
			hide_border();
		}
		
		if (global.chapter == 3) {
			var sword_room = room_id == 137 || room_id == 136 || room_id == 138 || room_id == 148 || room_id == 186;
			
			if (sword_room)
				hide_border(0.025);
			
			if (room_id == 121) {
				set_custom_effect(3);
				hide_border(1);
			}
			
			if (room_id == 98 || room_id == 99 || room_id == 100 || room_id == 101 || room_id == 102 || room_id == 103 || room_id == 187 || room_id == 188) {
				overlay_alpha = 1;
				hide_border();
			}
			
			if (room_id == 140) {
				stop_custom_effect();
				show_border();
			}
			
			if (room_id == 190)
				show_border(1);
			
			if (room_id == 109) {
				if (i_ex(obj_ch3_PTB02)) {
					if (obj_ch3_PTB02.con >= 10) {
						overlay_alpha = 1;
						hide_border(1);
					}
				}
			}
			
			if (sword_room)
				set_custom_effect(0);
		}
	} else if (border_id == "Simple" || border_id == "シンプル") {
		show_border(1);
	}
};

set_border = function(arg0, arg1 = 0.025) {
	if (is_border_simple())
		exit;
	
	if (arg0 == _border_image_temp && _border_image_temp_alpha_amount == arg1)
		exit;
	
	if (arg1 >= 1) {
		_border_image = arg0;
		_border_image_temp = arg0;
	} else {
		_border_image_temp = arg0;
		_border_image_temp_alpha_amount = arg1;
	}
};

hide_border = function(arg0 = 1, arg1 = 0) {
	if (is_border_simple())
		exit;
	
	overlay_fade_speed = arg0;
	overlay_alpha_target = 1;
	overlay_color = arg1;
};

show_border = function(arg0 = 0.025) {
	overlay_fade_speed = -arg0;
	overlay_alpha_target = 0;
};

set_custom_effect = function(arg0, arg1 = 0.02) {
	if (is_border_simple())
		exit;
	
	custom_effect_con = 0;
	custom_effect = arg0;
	custom_effect_fade_speed = arg1;
	custom_effect_color = 0;
	custom_effect_alpha_target = 0.8;
	
	if (custom_effect == 1) {
		custom_effect_color = merge_color(c_black, c_navy, 0.5);
		custom_effect_alpha_target = 0.6;
	}
	
	if (custom_effect == 2) {
		custom_effect_color = 5771280;
		custom_effect_alpha_target = 1;
	}
	
	if (custom_effect == 3) {
		custom_effect_color = 16777215;
		custom_effect_alpha_target = 1;
	}
};

stop_custom_effect = function() {
	if (is_border_simple())
		exit;
	
	scr_delay_var("custom_effect_con", 1, 15);
};
