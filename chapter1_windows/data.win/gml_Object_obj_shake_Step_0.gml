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

if (active == 0) {
	camerax = __view_get(e__VW.XView, camera);
	cameray = __view_get(e__VW.YView, camera);
	
	if (global.flag[12] == 0) {
		__view_set(e__VW.XView, camera, camerax + shakex);
		__view_set(e__VW.YView, camera, cameray + shakey);
	}
	
	shakesign = -shakesign;
	active = 1;
	alarm[0] = shakespeed;
}
