target = obj_dbulletcontroller.target;

if (active == 1) {
	if (target != 3)
		scr_damage();
	
	if (target == 3)
		scr_damage_all();
	
	if (destroyonhit == 1)
		instance_destroy();
}
