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

if (y < scr_get_box(1) || y > scr_get_box(3) || x < scr_get_box(2) || x > scr_get_box(0))
	image_alpha *= 0.8;

if (sprite_index == spr_sunbolt) {
}
