if (active == 1) {
	if (stepped == 0) {
		with (obj_glowtilepuzz_ch1)
			stepnoise = 1;
		
		sprite_index = spr_glowtile_on_ch1;
	}
	
	stepped = 1;
	stepbuffer = 3;
}
