function scr_dogcheck_ch1() {
	if (scr_get_room_by_id(global.currentroom) >= 412 || scr_get_room_by_id(global.currentroom) <= 281) {
		if (scr_debug_ch1() == 0)
			return 1;
		else
			return 0;
	} else {
		return 0;
	}
}
