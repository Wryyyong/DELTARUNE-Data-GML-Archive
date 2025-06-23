if (audio_group_is_loaded(1)) {
	roomchoice = PLACE_CONTACT;
	menu_go = 0;
	
	if (file_exists("filech1_0"))
		menu_go = 1;
	
	if (file_exists("filech1_1"))
		menu_go = 1;
	
	if (file_exists("filech1_2"))
		menu_go = 1;
	
	if (file_exists("filech1_3"))
		menu_go = 1;
	
	if (file_exists("dr.ini"))
		menu_go = 1;
	
	if (file_exists("filech1_3"))
		menu_go = 2;
	
	if (file_exists("filech1_4"))
		menu_go = 2;
	
	if (file_exists("filech1_5"))
		menu_go = 2;
	
	if (menu_go == 1)
		roomchoice = PLACE_MENU;
	
	if (menu_go == 2) {
		scr_windowcaption(scr_84_get_lang_string("obj_initializer2_slash_Step_0_gml_22_0"));
		global.tempflag[10] = 1;
		roomchoice = room_legend;
		global.plot = 0;
	}
	
	room_goto(roomchoice);
}
