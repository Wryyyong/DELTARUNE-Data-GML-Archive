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

function scr_debug_print(arg0) {
	if (!scr_debug())
		exit;
	
	if (!instance_exists(obj_debug_gui)) {
		instance_create(__view_get(e__VW.XView, 0) + 10, __view_get(e__VW.YView, 0) + 10, obj_debug_gui);
		obj_debug_gui.depth = -9999;
	}
	
	obj_debug_gui.newtext = arg0;
	
	with (obj_debug_gui) {
		message[messagecount] = newtext;
		newtext = "";
		timer[messagecount] = 90 - totaltimer;
		totaltimer += timer[messagecount];
		messagecount++;
		debugmessage = message[0];
		
		for (i = 1; i < messagecount; i++)
			debugmessage += ("#" + message[i]);
	}
}
