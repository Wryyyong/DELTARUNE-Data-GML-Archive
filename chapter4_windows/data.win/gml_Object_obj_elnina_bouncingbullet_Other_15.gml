damage = 80;
target = 4;

if (active == 1) {
	if (target != 3)
		scr_damage();
	
	if (target == 3)
		scr_damage_all();
	
	printval("target");
	
	if (destroyonhit == 1)
		instance_destroy();
}
