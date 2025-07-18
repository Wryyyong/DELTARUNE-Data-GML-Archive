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

if (init == 0) {
	active = 1;
	init = 1;
	
	if (attackdirection == 1) {
		finalpoint = 2;
		targetx = obj_growtangle.x + 100;
	} else {
		targety = obj_growtangle.y + (100 * (attackdirection - 1));
		direction = (attackdirection == 0) ? 90 : 270;
		image_angle = direction;
	}
}

var laserdistance = point_distance(x, y, tailx, taily);

if (lasertimer > 0 || laserdistance >= 100) {
	tailx = scr_movetowards(tailx, x, laserspeed);
	taily = scr_movetowards(taily, y, laserspeed);
	lasertimer--;
	
	if (lasertimer <= 0 && laserdistance <= laserspeed) {
		if (attackdirection == 1)
			targetx = __view_get(e__VW.XView, 0) - 80;
		
		nextpoint++;
	}
}

if (lasertimer <= 0) {
	if (nextpoint == 2 && attackdirection != 1) {
		if ((x - laserspeed) <= (obj_heart.x + 10)) {
			x = obj_heart.x + 10;
			targetx = x;
			
			if (attackdirection == 2)
				targety = __view_get(e__VW.YView, 0) - 80;
			else
				targety = __view_get(e__VW.YView, 0) + 500;
			
			lasertimer = 15;
		} else {
			x -= laserspeed;
		}
	} else if (lasertimer <= 0) {
		x = scr_movetowards(x, targetx, laserspeed);
		y = scr_movetowards(y, targety, laserspeed);
		
		if (point_distance(x, y, targetx, targety) <= 0)
			lasertimer = (attackdirection == 1) ? 15 : 5;
	}
}

if (grazed == 1) {
	if (grazetimer == 0) {
		grazetimer = 5;
	} else {
		grazetimer--;
		
		if (grazetimer == 0)
			grazed = 0;
	}
}
