function scr_dogcheck_ch1() {
	if (global.currentroom >= 411 || global.currentroom <= 280) {
		if (scr_debug_ch1() == 0)
			return 1;
		else
			return 0;
	} else {
		return 0;
	}
}
