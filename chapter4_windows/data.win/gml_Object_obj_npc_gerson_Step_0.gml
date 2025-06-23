event_inherited();

if (facing_right && image_xscale != -2)
	scr_flip("x");

if (!facing_right && image_xscale != 2)
	scr_flip("x");

if (state != current_state) {
	state = current_state;
	state_init = false;
	state_loaded = false;
	
	if (state != 2 && state != 3)
		thinking_loop = false;
	
	if (state < 14)
		writing_loop = false;
	
	if (paper_marker != -4)
		instance_destroy(paper_marker);
}

if (state == 0) {
	if (!state_init) {
		state_init = true;
		anim_speed = 0;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 1) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = facing_up ? 2903 : 2273;
		anim_speed = 0.2;
		anim_index = 0;
		state_loaded = true;
	}
	
	if (facing_up) {
		if (current_sprite_index != 2903)
			current_sprite_index = 2903;
	} else if (current_sprite_index != 2273) {
		current_sprite_index = 2273;
	}
}

if (state == 2) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 4657;
		anim_speed = 0.1;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 3) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 1225;
		anim_speed = 0.1;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 4) {
	if (!state_init) {
		state_init = true;
		state_loaded = true;
		thinking_loop = true;
		thinking_timer = 0;
	}
}

if (state == 5) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 2026;
		anim_speed = 0.2;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 6) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 2624;
		anim_speed = 0;
		anim_index = 0;
		scr_lerpvar("anim_index", 0, 2, 12);
		scr_delay_var("state_loaded", true, 13);
	}
}

if (state == 7) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 2203;
		anim_speed = 0.2;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 8) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 1282;
		anim_speed = 0.1;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 9) {
	if (!state_init) {
		state_init = true;
		anim_speed = 0;
		anim_index = 0;
		state_loaded = true;
		current_sprite_index = 2273;
	}
	
	if (facing_up) {
		if (current_sprite_index != 2903)
			current_sprite_index = 2903;
	} else if (current_sprite_index != 2273) {
		current_sprite_index = 2273;
	}
}

if (state == 10) {
	if (!state_init) {
		state_init = true;
		anim_speed = 0;
		anim_index = 0;
		state_loaded = true;
		current_sprite_index = 1678;
	}
}

if (state == 11) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 5636;
		anim_speed = 0.2;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 12) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 1002;
		anim_speed = 0.1;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 13) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 3177;
		anim_speed = 0;
		anim_index = 0;
		paper_timer = 0;
	}
	
	if (paper_con == 0) {
		paper_timer++;
		
		if (paper_timer == 1) {
			if (paper_marker != -4)
				instance_destroy(paper_marker);
			
			snd_play_pitch(snd_wing, 1.2);
			paper_marker = scr_dark_marker(x + 14, y + 46, spr_gerson_paper_fall);
			
			with (paper_marker) {
				vspeed = 6;
				scr_var_delay("sprite_index", 2033, 6);
				scr_var_delay("vspeed", 0, 4);
				scr_var_delay("hspeed", -6, 3);
				scr_var_delay("friction", 1, 8);
			}
		}
	}
	
	if (paper_con == 1) {
		paper_timer++;
		
		if (paper_timer == 1) {
			current_sprite_index = 5500;
			anim_index = 0;
		}
		
		if (paper_timer == 10) {
			current_sprite_index = 5382;
			anim_index = 0;
		}
		
		if (paper_timer == 14)
			anim_index = 1;
	}
}

if (state == 14) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 3343;
		anim_speed = 0.1;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 15) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 4382;
		anim_speed = 0.1;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 16) {
	if (!state_init) {
		state_init = true;
		current_sprite_index = 4321;
		anim_speed = 0;
		anim_index = 0;
		scr_lerpvar("anim_index", 0, 1, 6);
		scr_delay_var("state_loaded", true, 7);
	}
}

if (state == 17) {
	if (!state_init) {
		state_init = true;
		state_loaded = true;
		writing_loop = true;
		writing_timer = 0;
	}
}

if (state == 18) {
	if (!state_init) {
		state_init = true;
		spintimer = 0;
		current_sprite_index = 4673;
		anim_speed = 0;
		anim_index = 0;
	}
	
	spintimer++;
	
	if (spintimer < 10)
		anim_index += (2/3);
	
	if (spintimer == 10) {
		anim_index = 0;
		current_sprite_index = 2381;
		snd_play(snd_mercyadd);
	}
	
	if (spintimer >= 10) {
		if (anim_index < 11)
			anim_index += 0.5;
		
		if (anim_index >= 11)
			anim_index += 0.25;
		
		if (anim_index > 13)
			anim_index = 13;
	}
	
	if (spintimer == 50)
		state_loaded = true;
}

if (state == 19) {
	if (!state_init) {
		state_init = true;
		anim_timer = 0;
		current_sprite_index = 1560;
		anim_speed = 0;
		anim_index = 1;
	}
	
	anim_timer++;
	
	if (anim_timer == 4)
		anim_index = 0;
	
	if (anim_timer == 30)
		state_loaded = true;
}

if (state == 20) {
	if (!state_init) {
		state_init = true;
		anim_timer = 0;
		current_sprite_index = 2203;
		anim_speed = 0;
		anim_index = 0;
	}
	
	anim_timer++;
	
	if (anim_timer == 1)
		scr_jump_to_point_sprite(x, y, 8, 8, 2203, 2203);
	
	if (anim_timer == 14) {
		current_sprite_index = 2273;
		anim_speed = 0;
		anim_index = 0;
		state_loaded = true;
	}
}

if (state == 21) {
	if (!state_init) {
		state_init = true;
		writing_loop = false;
		current_sprite_index = 170;
		anim_speed = 0;
		anim_index = 0;
		state_loaded = true;
	}
}

if (thinking_loop) {
	thinking_timer++;
	
	if (thinking_timer == 1)
		current_state = 2;
	
	if (thinking_timer == 70)
		current_state = 3;
	
	if (thinking_timer == 110)
		thinking_timer = 0;
}

if (writing_loop) {
	writing_timer++;
	
	if (writing_timer == 1)
		current_state = 14;
	
	if (writing_timer == 120)
		current_state = 15;
	
	if (writing_timer == 190)
		current_state = 16;
	
	if (writing_timer == 210)
		writing_timer = 0;
}
