with (obj_heroparent) {
	if (sprite_index != spr_ralsei_splat) {
		state = 0;
		x = xstart;
		y = ystart;
	}
}

scr_healitemspell(160 - (min(pet_current[star], 3) * 40));
