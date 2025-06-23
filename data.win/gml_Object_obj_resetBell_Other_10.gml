if (play == 0) {
	snd_play(snd_bell);
	
	if (i_ex(obj_holemouse_block_clockwise)) {
		with (obj_holemouse_block_clockwise)
			reset = 1;
	}
	
	if (i_ex(obj_holemouse_block_counterclockwise)) {
		with (obj_holemouse_block_counterclockwise)
			reset = 1;
	}
	
	if (i_ex(obj_holemouse_block_clockwise_moveable)) {
		with (obj_holemouse_block_clockwise_moveable)
			reset = 1;
	}
	
	play = 1;
	timer = 20;
	image_speed = 0.25;
}
