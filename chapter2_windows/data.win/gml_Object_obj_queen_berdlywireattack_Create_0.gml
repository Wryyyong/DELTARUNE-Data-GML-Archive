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

image_speed = 0;
m = 2;
hangx = 26;
hangy = -58;
init_hangy = hangy;
remx = hangx;
global.turntimer = 170;
hangsparktimer = 0;
shootmode = 2;
xmovement_finished = 0;
targetx = __view_get(e__VW.XView, 0) + 260;
hangvspeed = 0;
hanghspeed = 0;
hangcon = 1;
hangsiner = 0;
sprite_index = spr_cutscene_25_berdly_plug;
image_xscale = 2;
image_yscale = 2;
active = false;
