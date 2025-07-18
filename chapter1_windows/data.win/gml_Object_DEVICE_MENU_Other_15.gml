enum UnknownEnum {
	Value_0,
	Value_28 = 28
}

iniwrite = ossafe_ini_open("dr.ini");
_NEWNAME = ini_read_string("G" + string(MENUCOORD[2]), "Name", "------");
_NEWTIME = ini_read_real("G" + string(MENUCOORD[2]), "Time", 0);
var room_id = ini_read_real("G" + string(MENUCOORD[2]), "Room", scr_get_id_by_room_index(room));

if (room_id < 10000) {
	room_index = room_id;
	var room_offset = room_index;
	
	if (room_index < 0)
		room_offset = 0 + room_index;
	
	room_id = room_offset;
	room_id += 10000;
}

var room_index = scr_get_valid_room(1, room_id);
_NEWROOM = room_index;
_NEWLEVEL = ini_read_real("G" + string(MENUCOORD[2]), "Level", 0);
_NEWDATE = ini_read_real("G" + string(MENUCOORD[2]), "Date", 0);
_NEWINITLANG = ini_read_real("G" + string(MENUCOORD[2]), "InitLang", 0);
_NEWURABOSS = ini_read_real("G" + string(MENUCOORD[2]), "UraBoss", 0);
_NEWVERSION = ini_read_string("G" + string(MENUCOORD[2]), "Version", "0");
ini_write_string("G" + string(MENUCOORD[3]), "Name", _NEWNAME);
ini_write_real("G" + string(MENUCOORD[3]), "Time", _NEWTIME);
ini_write_real("G" + string(MENUCOORD[3]), "Room", scr_get_id_by_room_index(_NEWROOM));
ini_write_real("G" + string(MENUCOORD[3]), "Level", _NEWLEVEL);
ini_write_real("G" + string(MENUCOORD[3]), "Date", _NEWDATE);
ini_write_real("G" + string(MENUCOORD[3]), "InitLang", _NEWINITLANG);
ini_write_real("G" + string(MENUCOORD[3]), "UraBoss", _NEWURABOSS);
ini_write_string("G" + string(MENUCOORD[3]), "Version", _NEWVERSION);
ossafe_ini_close();
var result = scr_get_ura_value(global.chapter, MENUCOORD[2]);
scr_store_ura_result(global.chapter, MENUCOORD[3], result);
FILE[MENUCOORD[3]] = 1;
PLACE[MENUCOORD[3]] = PLACE[MENUCOORD[2]];
TIME[MENUCOORD[3]] = TIME[MENUCOORD[2]];
NAME[MENUCOORD[3]] = NAME[MENUCOORD[2]];
LEVEL[MENUCOORD[3]] = LEVEL[MENUCOORD[2]];
INITLANG[MENUCOORD[3]] = INITLANG[MENUCOORD[2]];
TIME_STRING[MENUCOORD[3]] = TIME_STRING[MENUCOORD[2]];

if (!global.is_console) {
	file_copy("filech1_" + string(MENUCOORD[2]), "filech1_" + string(MENUCOORD[3]));
	
	if (file_exists("keyconfig_" + string(MENUCOORD[2]) + ".ini"))
		file_copy("keyconfig_" + string(MENUCOORD[2]) + ".ini", "keyconfig_" + string(MENUCOORD[3]) + ".ini");
} else {
	var file_to_copy = ds_map_find_value(global.savedata, "filech1_" + string(MENUCOORD[2]));
	var new_filename = "filech1_" + string(MENUCOORD[3]);
	var new_file = ossafe_file_text_open_write(new_filename);
	ds_map_set(new_file, "data", file_to_copy);
	ossafe_file_text_close(new_file);
	ossafe_savedata_save();
	
	if (ossafe_file_exists("keyconfig_" + string(MENUCOORD[2]) + ".ini")) {
		ossafe_ini_open("keyconfig_" + string(MENUCOORD[2]) + ".ini");
		var copy_border = ini_read_string("BORDER", "TYPE", global.screen_border_id);
		var copy_controls_list = [];
		var shoulder_reassign = obj_gamecontroller.gamepad_shoulderlb_reassign;
		
		for (var i = 0; i < 10; i += 1)
			copy_controls_list[i] = ini_read_real("GAMEPAD_CONTROLS", string(i), global.input_g[i]);
		
		shoulder_reassign = ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", obj_gamecontroller.gamepad_shoulderlb_reassign);
		ossafe_ini_close();
		ossafe_ini_open("keyconfig_" + string(MENUCOORD[3]) + ".ini");
		ini_write_string("BORDER", "TYPE", copy_border);
		
		for (var i = 0; i < 10; i += 1)
			ini_write_real("GAMEPAD_CONTROLS", string(i), copy_controls_list[i]);
		
		ini_read_real("SHOULDERLB_REASSIGN", "SHOULDERLB_REASSIGN", shoulder_reassign);
		ossafe_ini_close();
	}
}

with (obj_event_manager)
	trigger_event(UnknownEnum.Value_0, UnknownEnum.Value_28);
