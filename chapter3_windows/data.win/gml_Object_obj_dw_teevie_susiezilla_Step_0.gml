depth = 5000;

if (init == 0) {
	with (obj_caterpillarchara) {
		if (name == "susie") {
			other.susie = id;
			other.init = 1;
		}
	}
}

if (sukcon == 0 && !killmove) {
	with (obj_mainchara) {
		var xloc = x + 18;
		var yloc = y + 60;
		var radius = 120;
		
		if (i_ex(collision_rectangle(xloc - radius, yloc - (radius / 2), xloc + radius, yloc + (radius / 2), obj_susiezilla_house_single, 0, 0)))
			other.sukcon = 1;
	}
}

if (sukcon == 1) {
	if (killmove)
		sukcon = 0;
	
	susie.follow = false;
	susie.fun = 1;
	targ = instance_nearest(susie.x, susie.y, obj_susiezilla_house_single);
	var side = choose(0, 1);
	var targx = targ.x - 36 - 18;
	var targy = targ.y - 62;
	
	if (side == 1)
		targx = (targ.x + 36) - 8;
	
	walktime = round(point_distance(susie.x, susie.y, targ.x, targ.y) / 8);
	
	if (walktime < 1)
		walktime = 1;
	
	with (susie) {
		if (x > targx)
			sprite_index = spr_susie_walk_left_dw;
		else
			sprite_index = spr_susie_walk_right_dw;
		
		image_speed = 0.25;
		scr_lerpvar("x", x, targx, other.walktime);
		scr_lerpvar("y", y, targy, other.walktime);
	}
	
	sukcon = -1;
	scr_delay_var("sukcon", 2, walktime + 1);
	suktimer = 0;
}

if (sukcon == 2) {
	if (killmove)
		sukcon = 0;
	
	suktimer++;
	
	if (suktimer == 1) {
		dokick = false;
		susie.fun = 1;
		susie.image_speed = 0;
		susie.image_index = 0;
		
		if (i_ex(targ)) {
			if (targ.myhealth > 0) {
				if (susie.x < targ.x)
					susie.sprite_index = spr_susie_right_diagonal_kick_dw;
				else
					susie.sprite_index = spr_susie_left_diagonal_kick_dw;
				
				dokick = true;
			}
		}
	}
	
	if (i_ex(targ)) {
		if (targ.myhealth > 0 && dokick == true) {
			if (suktimer == 5)
				susie.image_index = 1;
			
			if (suktimer == 10)
				susie.image_index = 2;
			
			if (suktimer == 11) {
				snd_play(snd_wing);
				susie.image_index = 3;
				
				with (targ) {
					myhealth = 0;
					scr_shakeobj();
				}
			}
		}
	}
	
	if (dokick) {
		if (suktimer == 12)
			susie.image_index = 4;
	}
	
	if (suktimer == 18) {
		with (targ) {
			scr_marker_ext(x, y, sprite_index, 2, 2, 0, image_index, image_blend, depth);
			instance_destroy();
		}
		
		sukcon = 3;
		suktimer = 0;
	}
}

if (sukcon == 3) {
	targ = -4;
	targ = instance_nearest(susie.x, susie.y, obj_susiezilla_house_single);
	var targx, targy;
	
	if (i_ex(targ)) {
		targx = targ.x - 36 - 18;
		targy = targ.y - 62;
		
		if (susie.x > targ.x)
			targx = (targ.x + 36) - 8;
	}
	
	if (!i_ex(targ))
		walktime = 99;
	else
		walktime = round(point_distance(susie.x, susie.y, targx, targy) / 8);
	
	var toolong = 90;
	
	if (walktime > 90) {
		sukcon = 4;
	} else {
		if (walktime < 1)
			walktime = 1;
		
		with (susie) {
			if (x > targx)
				sprite_index = spr_susie_walk_left_dw;
			else
				sprite_index = spr_susie_walk_right_dw;
			
			image_speed = 0.25;
			scr_lerpvar("x", x, targx, other.walktime);
			scr_lerpvar("y", y, targy, other.walktime);
		}
		
		sukcon = -1;
		scr_delay_var("sukcon", 2, walktime + 1);
		suktimer = 0;
	}
}

if (sukcon == 4) {
	with (susie) {
		if (point_distance(x, y, obj_mainchara.x, obj_mainchara.y) > 64) {
			if (x < obj_mainchara.x)
				sprite_index = spr_susie_walk_right_dw;
			else
				sprite_index = spr_susie_walk_left_dw;
			
			image_speed = 0.25;
			move_towards_point(obj_mainchara.x, obj_mainchara.y - 16, 8);
		} else {
			speed = 0;
			follow = true;
			fun = false;
			scr_caterpillar_interpolate();
			other.sukcon = 0;
		}
	}
}

if (killmove) {
	with (obj_npc_PAspeaker)
		instance_destroy();
	
	with (obj_lerpvar) {
		if (target == other.susie) {
			debug_print("lerpkilled:" + string(id));
			instance_destroy();
		}
	}
	
	susie.speed = 0;
	
	if (fighthappened == false) {
		if (i_ex(obj_battleback))
			fighthappened = true;
	}
	
	if (fighthappened == true && !i_ex(obj_battleback)) {
		fighthappened = false;
		killmove = 0;
	}
}

if (nohouses == 0) {
	if (!i_ex(obj_susiezilla_house_single)) {
		snd_play(snd_won);
		scr_confetti_ext(camerax() - 10, cameray() + 300, 15, 40, 20, 192, 356, 2);
		scr_confetti_ext(camerax() + 640 + 10, cameray() + 300, 165, 40, 20, 192, 356, 2);
		nohouses = 1;
		signx = camerax() + 320;
		
		with (scr_lerpvar("signy", -400, 60, 40, -3, "out"))
			respectglobalinteract = true;
		
		timer = 0;
	}
}

if (nohouses == 1) {
}
