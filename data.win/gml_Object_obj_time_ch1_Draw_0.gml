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

if (scr_debug_ch1()) {
	draw_set_font(fnt_main);
	draw_set_color(c_red);
	draw_text(__view_get(e__VW.XView, 0), __view_get(e__VW.YView, 0), fps);
}
