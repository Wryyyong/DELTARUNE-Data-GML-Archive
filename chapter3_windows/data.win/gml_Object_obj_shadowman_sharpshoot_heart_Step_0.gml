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

if (x < (__view_get(e__VW.XView, 0) - 80))
	instance_destroy();

if (x > (__view_get(e__VW.XView, 0) + 760))
	instance_destroy();

if (y < (__view_get(e__VW.YView, 0) - 80))
	instance_destroy();

if (y > (__view_get(e__VW.YView, 0) + 580))
	instance_destroy();

if (con == 1) {
	if (y > savey) {
		image_alpha -= 0.2;
		
		if (image_alpha <= 0)
			instance_destroy();
	}
}
