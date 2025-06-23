function scr_save() {
	scr_saveprocess(global.filechoice);
	filechoicebk2 = global.filechoice;
	global.filechoice = 9;
	scr_saveprocess(9);
	global.filechoice = filechoicebk2;
	ossafe_ini_open("dr.ini");
	ini_write_string("G" + string(global.filechoice), "Name", global.truename);
	ini_write_real("G" + string(global.filechoice), "Level", global.lv);
	ini_write_real("G" + string(global.filechoice), "Love", global.llv);
	ini_write_real("G" + string(global.filechoice), "Time", global.time);
	ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Date", date_current_datetime());
	ini_write_real(scr_ini_chapter(global.chapter, global.filechoice), "Room", scr_get_id_by_room_index(room));
	ini_write_real("G" + string(global.filechoice), "InitLang", global.flag[912]);
	var uraboss = 0;
	
	if (global.flag[241] == 6)
		uraboss = 1;
	else if (global.flag[241] == 7)
		uraboss = 2;
	
	ini_write_real("G" + string(global.filechoice), "UraBoss", uraboss);
	ini_write_string("G" + string(global.filechoice), "Version", global.version);
	ossafe_ini_close();
	ossafe_savedata_save();
}
