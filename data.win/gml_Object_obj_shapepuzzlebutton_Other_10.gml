if (!obj_shapepuzzle.goalHit) {
	snd_play(snd_noise);
	global.interact = 1;
	global.facing = 2;
	active = 1;
	
	with (obj_shapepuzzle)
		inUse = 1;
	
	with (myPiece)
		active = 1;
	
	mybuffer = 0;
}
