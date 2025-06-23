function scr_litemremove_ch1(arg0) {
	for (i = 0; i < 8; i += 1) {
		if (global.litem[i] == arg0)
			script_execute(scr_litemshift_ch1, i, 0);
	}
}
