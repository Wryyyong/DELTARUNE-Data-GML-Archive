lifetimer++;

if (normalanim == 1) {
	if (myinteract > 0 && instance_exists(obj_writer)) {
		if (obj_writer.halt > 0) {
			image_speed = 0;
			image_index = 0;
		}
		
		if (obj_writer.halt == 0)
			image_speed = remanimspeed;
	}
}

if (fun == 0) {
	if (normalanim == 1 || normalanim == 2) {
		if (myinteract == 0) {
			facing = dfacing;
			image_index = 0;
			image_speed = 0;
		}
	}
	
	scr_npcdir();
}
