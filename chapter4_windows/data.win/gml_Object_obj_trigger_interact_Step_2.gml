if (init == 0) {
	if (issolid) {
		if (!i_ex(mysolid))
			mysolid = instance_create(x, y, obj_solidblock);
	}
	
	init = 1;
}

if (issolid) {
	mysolid.x = x;
	mysolid.y = y;
	mysolid.sprite_index = sprite_index;
	mysolid.mask_index = mask_index;
	mysolid.image_xscale = image_xscale;
	mysolid.image_yscale = image_yscale;
	mysolid.image_angle = image_angle;
}

if (markerstick)
	setxy(x - markerxoffset, y - markeryoffset, marker);
