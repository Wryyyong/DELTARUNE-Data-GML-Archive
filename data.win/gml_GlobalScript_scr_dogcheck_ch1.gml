function scr_dogcheck_ch1() {
	if (global.currentroom >= scr_get_id_by_room_index(412) || global.currentroom <= scr_get_id_by_room_index(281)) {
	} else {
		return 0;
	}
}
