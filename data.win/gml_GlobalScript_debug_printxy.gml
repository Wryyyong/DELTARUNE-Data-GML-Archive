enum e__VW {
	XView,
	YView,
	WView,
	HView,
	Angle,
	HBorder,
	VBorder,
	HSpeed,
	VSpeed,
	Object,
	Visible,
	XPort,
	YPort,
	WPort,
	HPort,
	Camera,
	SurfaceID
}

function debug_printxy(arg0, arg1, arg2) {
	if (scr_debug()) {
		camx = __view_get(e__VW.XView, 0);
		camy = __view_get(e__VW.YView, 0);
		camx = arg0 + camerax();
		camy = arg1 + cameray();
		draw_set_font(fnt_small);
		draw_set_color(c_black);
		draw_text(camx, camy, arg2);
		draw_text(camx + 1, camy, arg2);
		draw_text(camx + 1, camy + 1, arg2);
		draw_text(camx + 1, camy - 1, arg2);
		draw_text(camx - 1, camy, arg2);
		draw_text(camx - 1, camy + 1, arg2);
		draw_text(camx - 1, camy - 1, arg2);
		draw_text(camx, camy - 1, arg2);
		draw_text(camx + 1, camy - 1, arg2);
		draw_text(camx - 1, camy - 1, arg2);
		draw_text(camx, camy + 1, arg2);
		draw_text(camx + 1, camy + 1, arg2);
		draw_text(camx - 1, camy + 1, arg2);
		draw_set_color(c_gray);
		draw_text(camx, camy, arg2);
	}
}
