if (spawning) {
	sprite_index = spr_virovirokun_needle;
	image_index = 0;
	spawning = 0;
	active = 1;
	image_speed = 0;
} else {
	instance_destroy();
}
