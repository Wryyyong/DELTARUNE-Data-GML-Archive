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

heartobj = obj_heart;
pos = 1;
idealpos = 1;
yy = __view_get(e__VW.YView, 0);
ypos[0] = yy + 50;
ypos[1] = yy + 165;
ypos[2] = yy + 280;
movecon = 0;
movetimer = 0;
my_direction = "up";
ychange = 0;
buttona = instance_create(x, y, obj_sneo_elevator_test_button);
buttonb = instance_create(x, y, obj_sneo_elevator_test_button);
buttonb.my_direction = "down";
buttonb.sprite_index = spr_sneo_elevator_buttonb;
bullettimer = 0;
bulletcount = 0;
forceypos = -1;
lightningcon = 1;
lightninghandicap = 0;
