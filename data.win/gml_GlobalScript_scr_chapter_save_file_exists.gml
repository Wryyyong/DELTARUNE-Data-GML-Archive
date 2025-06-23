enum UnknownEnum {
	Value_1 = 1,
	Value_2
}

function scr_chapter_save_file_exists(arg0) {
	var _exists = false;
	
	for (var i = 0; i < 3; i++) {
		_exists = ossafe_file_exists("filech" + string(arg0) + "_" + string(i));
		
		if (_exists == true)
			break;
	}
	
	return _exists;
}

function scr_chapter_save_file_exists_in_slot(arg0, arg1) {
	var _exists = ossafe_file_exists("filech" + string(arg0) + "_" + string(arg1));
	return _exists;
}

function scr_completed_chapter_any_slot(arg0) {
	var _file_exists = false;
	
	for (var i = 0; i < 3; i++) {
		if (ossafe_file_exists("filech" + string(arg0) + "_" + string(i + 3))) {
			_file_exists = true;
			break;
		}
	}
	
	return _file_exists;
}

function scr_completed_chapter_in_slot(arg0, arg1) {
	var _file_exists = ossafe_file_exists("filech" + string(arg0) + "_" + string(arg1 + 3));
	return _file_exists;
}

function scr_fought_secret_boss_any_slot(arg0) {
	var _fought = false;
	
	for (var i = 0; i < 3; i++) {
		var _slot = i;
		var _result = scr_get_ura_value(arg0, _slot);
		
		if (_result > 0) {
			_fought = true;
			break;
		}
	}
	
	return _fought;
}

function scr_get_ini_value(arg0, arg1, arg2) {
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_read_real(scr_ini_chapter(arg0, arg1), arg2, 0);
	ossafe_ini_close();
	return _ini_value;
}

function scr_get_ini_value_all_slots(arg0, arg1) {
	var _ini_file = ossafe_ini_open("dr.ini");
	var _list = [];
	
	for (var i = 0; i < 6; i++) {
		var _slot = i;
		var _value = ini_read_real(scr_ini_chapter(arg0, _slot), arg1, 0);
		_list[i][0] = _slot;
		_list[i][1] = _value;
	}
	
	ossafe_ini_close();
	return _list;
}

function scr_is_chapter_revealed(arg0) {
	if (arg0 == UnknownEnum.Value_1)
		return true;
	
	var completed_previous = scr_completed_chapter_any_slot(arg0 - 1);
	var completed_current = scr_completed_chapter_any_slot(arg0);
	var in_progress = scr_chapter_save_file_exists(arg0);
	return completed_previous || completed_current || in_progress;
}

function get_highest_revealed_chapter() {
	var highest_revealed = UnknownEnum.Value_1;
	
	for (var i = 0; i < UnknownEnum.Value_2; i++) {
		var chapter = i + 1;
		
		if (!scr_is_chapter_revealed(chapter))
			break;
		
		if (chapter > highest_revealed)
			highest_revealed = chapter;
	}
	
	return highest_revealed;
}

function scr_has_ura_data() {
	var _ini_file = ossafe_ini_open("dr.ini");
	var _exists = ini_section_exists("URA");
	ossafe_ini_close();
	return _exists;
}

function scr_convert_ura_data(arg0) {
	var _result_list = [];
	
	for (var i = 0; i < 3; i++) {
		var result = scr_get_ini_value(arg0, i, "UraBoss");
		_result_list[array_length(_result_list)] = result;
	}
	
	for (var i = 0; i < 3; i++) {
		var result = scr_get_ini_value(arg0, i + 3, "UraBoss");
		
		if (result > _result_list[i])
			_result_list[i] = result;
	}
	
	for (var i = 0; i < array_length(_result_list); i++) {
		var result = _result_list[i];
		scr_set_ura_value(arg0, i, result);
	}
}

function scr_get_ura_value(arg0, arg1) {
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_read_real("URA", string(arg0) + "_" + string(arg1), 0);
	ossafe_ini_close();
	return _ini_value;
}

function scr_set_ura_value(arg0, arg1, arg2) {
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_write_real("URA", string(arg0) + "_" + string(arg1), arg2);
	ossafe_ini_close();
	return _ini_value;
}
