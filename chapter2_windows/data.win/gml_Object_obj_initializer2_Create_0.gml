global.is_console = os_type == os_switch || os_type == os_ps4 || os_type == os_ps5;

if (!global.is_console)
	window_enable_borderless_fullscreen(true);

var launch_data = scr_init_launch_parameters();
global.launcher = launch_data.is_launcher;
textures_loaded = false;

if (global.is_console) {
	texture_set_interpolation(false);
	var sleep = scr_dark_marker(320 - sprite_get_width(spr_dog_sleep), 240 - (sprite_get_height(spr_dog_sleep) * 2), spr_dog_sleep);
	sleep.image_speed = 0.15;
}

if (global.launcher) {
	if (os_type == os_switch && !variable_global_exists("switchlogin")) {
		global.switchlogin = launch_data.switch_id;
		
		if (global.switchlogin >= 0)
			switch_save_data_mount(global.switchlogin);
		
		while (global.switchlogin < 0)
			global.switchlogin = switch_accounts_select_account(true, false, false);
		
		if (!switch_accounts_is_user_open(global.switchlogin))
			switch_accounts_open_user(global.switchlogin);
	}
} else if (os_type == os_switch && !variable_global_exists("switchlogin")) {
	var _id = -1;
	
	while (_id < 0)
		_id = switch_accounts_select_account(true, false, false);
	
	global.switchlogin = _id;
	switch_accounts_open_user(global.switchlogin);
}

global.screen_border_id = "";
global.screen_border_active = true;
global.screen_border_alpha = 0;
global.screen_border_state = 0;
global.screen_border_dynamic_fade_id = 0;
global.screen_border_dynamic_fade_level = 0;
global.savedata_async_id = -1;
global.savedata_async_load = false;
global.savedata_error = false;
global.savedata_debuginfo = "";
global.version = "1.19";

if (os_type == os_switch)
	global.version = "1.07";

if (os_type == os_ps4 || os_type == os_ps5)
	global.version = "1.07";

global.game_won = false;
global.chapter = 2;
old_savedata_check = false;

if (global.is_console) {
	ossafe_savedata_load();
} else {
	scr_84_init_localization();
	pal_swap_init_system(1);
	global.damagefont = font_add_sprite_ext(spr_numbersfontbig, "0123456789", 20, 0);
	global.damagefontgold = font_add_sprite_ext(spr_numbersfontbig_gold, "0123456789+-%", 20, 0);
	global.hpfont = font_add_sprite_ext(spr_numbersfontsmall, "0123456789-+", 0, 2);
	scr_gamestart();
	
	for (i = 0; i < 100; i += 1)
		global.tempflag[i] = 0;
	
	global.heartx = 300;
	global.hearty = 220;
	scr_prefetch_textures();
	scr_load_audio();
	
	if (!instance_exists(obj_time))
		instance_create(0, 0, obj_time);
}
