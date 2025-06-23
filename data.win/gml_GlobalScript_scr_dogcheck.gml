function scr_dogcheck() {
	if (global.currentroom == scr_get_id_by_room_index(4))
		return 0;
	
	if (global.currentroom >= scr_get_id_by_room_index(233) || global.currentroom <= scr_get_id_by_room_index(11))
		return 1;
	else
		return 0;
}
