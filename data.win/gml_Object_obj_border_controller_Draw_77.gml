var ww = window_get_width();
var wh = window_get_height();
var sw = surface_get_width(application_surface);
var sh = surface_get_height(application_surface);
var xx = floor((ww - (sw * global.window_scale)) / 2);
var yy = floor((wh - (sh * global.window_scale)) / 2);
global.window_xofs = xx;
global.window_yofs = yy;

if (os_type == os_switch && wh == 720)
	texture_set_interpolation(true);
else
	texture_set_interpolation(false);

if (global.screen_border_active && border_alpha >= 0) {
	var border_id = global.screen_border_id;
	draw_enable_alphablend(false);
	
	if (border_id == "Dynamic" || border_id == "ダイナミック") {
		scr_draw_background_ps4(_border_image, 0, 0);
		global.disable_border = obj_time.border_alpha != 1;
	} else if (border_id == "Simple" || border_id == "シンプル") {
		scr_draw_background_ps4(border_line_1080, 0, 0);
		global.disable_border = obj_time.border_alpha != 1;
	}
	
	draw_set_alpha(1);
	draw_enable_alphablend(true);
	
	if (border_alpha < 1) {
		draw_set_alpha(1 - border_alpha);
		draw_set_color(c_black);
		ossafe_fill_rectangle(0, 0, ww - 1, wh - 1);
		draw_set_alpha(1);
		draw_set_color(c_white);
	}
} else {
	if (!variable_global_exists("currentroom"))
		global.currentroom = room;
	
	var room_id = global.currentroom;
	
	if (instance_exists(obj_savepoint))
		global.disable_border = false;
	
	if (room_id == 27 || room_id == 881 || room_id == 244 || room_id == 240 || room_id == 233 || room_id == 11 || room_id == 12 || room_id == 2)
		global.disable_border = true;
}

draw_enable_alphablend(false);
draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1);

if (instance_exists(obj_time)) {
	var is_paused = false;
	
	with (obj_time)
		is_paused = paused;
	
	if (is_paused) {
		if (sprite_exists(obj_time.screenshot))
			draw_sprite_ext(obj_time.screenshot, 0, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1);
	}
}

draw_enable_alphablend(true);
texture_set_interpolation(false);
