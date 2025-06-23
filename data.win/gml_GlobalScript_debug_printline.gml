function debug_printline(arg0, arg1) {
	if (scr_debug()) {
		draw_set_font(fnt_small);
		draw_set_color(c_black);
		yy = 480 - (8 * arg1);
		xx = 2;
		draw_set_color(c_white);
	}
}
