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

function scr_battletext_ch1() {
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	
	if (global.fc != 0)
		battlewriter = instance_create_ch1(xx + 30, yy + 376, obj_writer_ch1);
	
	if (global.fc == 0)
		battlewriter = instance_create_ch1(xx + 30, yy + 376, obj_writer_ch1);
	
	myface = instance_create_ch1(xx + 26, yy + 380, obj_face_ch1);
	
	with (battlewriter) {
		dialoguer = 1;
		facer = 1;
		
		if (global.fc == 0 && originalcharline == 33)
			charline = 26;
	}
	
	return battlewriter;
}
