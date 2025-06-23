enum UnknownEnum {
	Value_2 = 2
}

if (ds_map_find_value(async_load, "id") == global.savedata_async_id) {
	global.savedata_async_id = -1;
	
	if (global.savedata_async_load) {
		global.savedata_async_load = false;
		
		if (ds_map_find_value(async_load, "status") == false) {
			if (!old_savedata_check) {
				old_savedata_check = true;
				ossafe_savedata_load_old_check();
				exit;
			} else {
				global.savedata_error = true;
				global.savedata_debuginfo = "load failed: " + string(ds_map_find_value(async_load, "status"));
				global.savedata = ds_map_create();
			}
		} else {
			global.savedata_error = false;
			global.savedata_debuginfo = "load succeeded";
			var json = buffer_read(global.savedata_buffer, buffer_string);
			global.savedata = json_decode(json);
		}
		
		buffer_delete(global.savedata_buffer);
		global.savedata_buffer = undefined;
		global.lang = "en";
		var _locale = os_get_language();
		var _lang;
		
		if (os_type == os_switch)
			_lang = substr(switch_language_get_desired_language(), 1, 2);
		else
			_lang = (substr(_locale, 1, 2) != "ja") ? "en" : "ja";
		
		global.lang = _lang;
		scr_controls_default();
		audio_group_load(0);
		
		if (ossafe_file_exists("true_config.ini")) {
			ossafe_ini_open("true_config.ini");
			global.lang = ini_read_string("LANG", "LANG", _lang);
			ossafe_ini_close();
		}
		
		if (!scr_has_ura_data()) {
			for (var i = 0; i < UnknownEnum.Value_2; i++) {
				var chapter = i + 1;
				scr_convert_ura_data(chapter);
			}
		}
		
		_parent.trigger_event("init_complete");
	}
}
