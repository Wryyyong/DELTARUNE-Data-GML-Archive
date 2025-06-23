function scr_dogcheck() {
	if (global.currentroom == scr_get_id_by_room_index(4))
		return 0;
	
	if (scr_get_room_by_id(global.currentroom) >= 233 || scr_get_room_by_id(global.currentroom) <= 11)
		return 1;
	else
		return 0;
}
