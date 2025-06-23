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
_border_image_layer = -4;
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
_border_image_siner = 0;
_border_image_alpha = 1;
_border_red_active = false;
_border_red_alpha = 0;
_border_red_timer = 0;
_loaded = false;

if (scr_is_switch_os() && wh == 720)
	global.window_scale = 4/3;
else
	global.window_scale = floor(min(scale_w, scale_h));

is_border_simple = function() {
	return global.screen_border_id == "Simple" || global.screen_border_id == "シンプル";
};

init_border = function() {
	var room_id = room;
	var room_border = scr_get_border(room_id);
	_border_image_layer = -4;
	var border_id = global.screen_border_id;
	
	if (border_id == "Dynamic" || border_id == "ダイナミック") {
		if (global.tempflag[95] == 1) {
			global.tempflag[95] = 0;
			var saveload_border = true;
			
			if ((room_id == 108 || room_id == 211 || room_id == 174 || room_id == 173) && global.plot < 120)
				saveload_border = false;
			else if ((room_id == 247 || room_id == 282 || room_id == 259 || room_id == 266 || room_id == 283 || room_id == 284) && global.plot < 234)
				saveload_border = false;
			else if (room_id == 278 && global.plot < 248)
				saveload_border = false;
			
			if (saveload_border) {
				set_border(room_border, 1);
				show_border(0.05);
			} else {
				overlay_alpha = 1;
				hide_border();
			}
		} else {
			set_border(room_border);
		}
		
		if (room_id == 76 || room_id == 1399 || room_id == 84) {
			stop_custom_effect();
			
			if (scr_completed_chapter_any_slot(global.chapter)) {
				set_border(4162, 1);
				show_border(0.08);
			} else {
				hide_border();
			}
		} else if (room_id == 1 || room_id == 80 || room_id == 75 || room_id == 2 || room_id == 105 || room_id == 82) {
			hide_border();
			stop_custom_effect();
		} else if (room_id == 59 || room_id == 91) {
			hide_border(0.025);
		} else if (room_id == 20 || room_id == 65 || room_id == 27) {
			show_border(1);
		}
		
		if (room_id == 82 || room_id == 80) {
			overlay_alpha = 1;
			hide_border();
		}
		
		if (global.chapter == 4) {
			if (global.plot >= 100 && global.plot < 105) {
				if (global.darkzone == 0) {
					set_custom_effect(2);
					show_border(1);
				} else {
					stop_custom_effect();
				}
			}
			
			if (room_id == 108)
				stop_custom_effect();
			
			if (room_id == 257)
				stop_custom_effect();
			
			if (room_id == 177)
				show_border();
			
			if (room_id == 285 || room_id == 305 || room_id == 286 || room_id == 306) {
				_border_image_layer = 1721;
				show_border();
			}
			
			if (room_id == 281 || room_id == 231) {
				overlay_alpha = 1;
				hide_border();
			}
			
			if (room_id == 173) {
				if (i_ex(obj_ch4_DCA02)) {
					overlay_alpha = 1;
					hide_border();
				}
			}
			
			if (room_id == 215) {
				if (i_ex(obj_dw_church_darkmaze)) {
					if (obj_dw_church_darkmaze.init && obj_dw_church_darkmaze.con < 100) {
						overlay_alpha = 1;
						hide_border();
					}
				}
			}
			
			if (room_id == 28) {
				if (global.plot >= 290)
					show_border();
			}
			
			if (room_id == 298)
				show_border();
			
			if (room_id == 321) {
				if (i_ex(obj_room_castle_tv_zone_1)) {
					if (obj_room_castle_tv_zone_1.init) {
						overlay_alpha = 1;
						hide_border();
					} else {
						hide_border(0.025);
					}
				}
			}
			
			if (room_id == 322 || room_id == 323 || room_id == 324 || room_id == 325) {
				overlay_alpha = 1;
				hide_border();
			}
			
			if (room_id == 261) {
				if (i_ex(obj_dw_church_knightclimbpost)) {
					if (obj_dw_church_knightclimbpost._show_border) {
						set_border(5562);
						show_border();
					} else {
						stop_custom_effect();
						hide_border();
					}
				}
			}
			
			if (room_id == 115)
				show_border();
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
		custom_effect_color = merge_color(c_white, c_blue, 0.7);
		custom_effect_alpha_target = 0.4;
	}
	
	if (custom_effect == 3)
		custom_effect_alpha_target = 0.4;
	
	if (custom_effect == 4)
		custom_effect_alpha_target = 0.6;
	
	if (custom_effect == 5)
		custom_effect_alpha_target = 0.8;
	
	if (custom_effect == 6)
		custom_effect_alpha_target = 0;
};

stop_custom_effect = function() {
	if (is_border_simple())
		exit;
	
	scr_delay_var("custom_effect_con", 1, 15);
};

trigger_event = function(arg0) {
	if (arg0 == "titan_hurt") {
		_border_red_active = true;
		_border_red_timer = 0;
	}
};
