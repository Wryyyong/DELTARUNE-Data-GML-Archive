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

if (global.darkzone == 0) {
	if (instance_exists(obj_camera_advanced)) {
		obj_camera_advanced.cutscene = cutscene;
		
		with (obj_camera_advanced)
			event_user(0);
	} else if (cutscene == 0 && !instance_exists(obj_shake)) {
		__view_set(e__VW.Object, 0, -4);
		wd = (x - floor(__view_get(e__VW.WView, 0) / 2)) + 11;
		ht = (y - floor(__view_get(e__VW.HView, 0) / 2)) + 17;
		__view_set(e__VW.XView, 0, wd);
		__view_set(e__VW.YView, 0, ht);
		
		if (__view_get(e__VW.XView, 0) < 0)
			__view_set(e__VW.XView, 0, 0);
		
		if (__view_get(e__VW.XView, 0) > (room_width - __view_get(e__VW.WView, 0)))
			__view_set(e__VW.XView, 0, room_width - __view_get(e__VW.WView, 0));
		
		if (__view_get(e__VW.YView, 0) < 0)
			__view_set(e__VW.YView, 0, 0);
		
		if (__view_get(e__VW.YView, 0) > (room_height - __view_get(e__VW.HView, 0)))
			__view_set(e__VW.YView, 0, room_height - __view_get(e__VW.HView, 0));
	}
}
