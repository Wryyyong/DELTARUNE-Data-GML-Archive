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

if (wall_destroy == 1) {
	if (x < (__view_get(e__VW.XView, 0) - 80))
		instance_destroy();
	
	if (x > (__view_get(e__VW.XView, 0) + 760))
		instance_destroy();
	
	if (y < (__view_get(e__VW.YView, 0) - 80))
		instance_destroy();
	
	if (y > (__view_get(e__VW.YView, 0) + 580))
		instance_destroy();
}

if (imageonly)
	image_angle += spin;
else
	direction += spin;

if (updateimageangle == 1)
	image_angle = direction;
