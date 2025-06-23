if (alertcon >= 1 && frozen == 0 && ignoresolid == 0) {
	if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solidblock, 0, 1) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_solidenemy, 0, 1)) {
		x -= hspeed;
		y -= vspeed;
		hspeed = 0;
		vspeed = 0;
	}
}
