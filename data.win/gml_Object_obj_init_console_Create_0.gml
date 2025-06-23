global.savedata_async_id = -1;
global.savedata_async_load = false;
global.savedata_error = false;
global.savedata_debuginfo = "";
global.savedata_pause = false;
_parent = -4;
old_savedata_check = false;

init = function(arg0, arg1) {
	_parent = arg0;
	application_surface_enable(true);
	application_surface_draw_enable(false);
	
	if (os_type == os_switch && !variable_global_exists("switchlogin")) {
		global.switchlogin = arg1.switch_id;
		
		if (global.switchlogin >= 0)
			switch_save_data_mount(global.switchlogin);
		
		while (global.switchlogin < 0)
			global.switchlogin = switch_accounts_select_account(true, false, false);
		
		if (!switch_accounts_is_user_open(global.switchlogin))
			switch_accounts_open_user(global.switchlogin);
	}
	
	if (os_type == os_switch) {
		switch_controller_support_set_defaults();
		switch_controller_support_set_singleplayer_only(true);
		switch_controller_set_supported_styles(7);
	}
	
	if (os_type == os_ps4)
		ps4_touchpad_mouse_enable(false);
	
	ossafe_savedata_load();
};
