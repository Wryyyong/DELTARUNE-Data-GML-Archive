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

__view_set(e__VW.Object, 0, -4);
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) - 40);
scr_pan(0, -1, 20);
