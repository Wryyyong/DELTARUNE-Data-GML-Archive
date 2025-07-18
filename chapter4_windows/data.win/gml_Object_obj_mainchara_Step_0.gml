if (ignoredepth == 0)
	scr_depth();

wallcheck = 0;
nowx = x;
nowy = y;

if (press_d == 0 && press_l == 0 && press_u == 0 && press_r == 0)
	nopress = 1;

press_l = 0;
press_r = 0;
press_d = 0;
press_u = 0;
bkx = 0;
bky = 0;
bkxy = 0;
jelly = 2;

if (scr_debug()) {
	var noclipinput = false;
	var glointforce = false;
	
	for (var i = 0; i < 8; i++) {
		if ((gamepad_button_check(i, gp_shoulderl) || gamepad_button_check(i, gp_shoulderlb)) && (gamepad_button_check(i, gp_shoulderr) || gamepad_button_check(i, gp_shoulderrb))) {
			if (gamepad_button_check_pressed(i, gp_face4))
				noclipinput = true;
			
			if (gamepad_button_check_pressed(i, gp_select))
				glointforce = true;
		}
	}
	
	if ((keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("N"))) || noclipinput) {
		noclip = !noclip;
		var str = "off";
		
		if (noclip == 1)
			str = "on";
		
		debug_print("noclip=" + str);
	}
	
	if ((keyboard_check(vk_shift) && keyboard_check(vk_control) && keyboard_check_pressed(ord("0"))) || glointforce) {
		debug_print("global.interact set to 0");
		global.interact = 0;
	}
}

if (!roomenterfreezeend) {
	if (global.interact == 3) {
		if (global.flag[21] > 0) {
			global.flag[21]--;
		} else {
			roomenterfreezeend = 1;
			global.interact = 0;
			global.flag[21] = -10;
		}
	}
}

if (global.interact == 0) {
	if (button3_p() && threebuffer < 0) {
		if (global.flag[7] == 0 && battlemode == 0 && swordmode == 0 && !instance_exists(obj_climb_kris)) {
			with (obj_darkcontroller)
				threebuffer = 2;
			
			with (obj_overworldc) {
				movenoise = 1;
				threebuffer = 2;
			}
			
			global.menuno = 0;
			global.interact = 5;
			threebuffer = 2;
			twobuffer = 2;
		}
	}
}

if (swordcon == 1) {
	swordtimer++;
	
	if (swordtimer >= 15) {
		with (slashmarker)
			instance_destroy();
		
		swordcon = 0;
		swordsprite = rsprite;
		fun = 0;
		
		if (global.interact == 4)
			global.interact = 0;
		
		swordtimer = 0;
		image_speed = 0;
		image_index = 0;
		image_alpha = 1;
	}
}

if (global.interact == 0 && freeze == 0) {
	if (global.flag[11] == 1) {
		if (button2_h() && twobuffer < 0)
			run = 0;
		else
			run = 1;
	} else if (button2_h() && twobuffer < 0) {
		run = 1;
	} else {
		run = 0;
	}
	
	if (autorun > 0) {
		if (autorun == 1) {
			run = 1;
			runtimer = 200;
		}
		
		if (autorun == 2) {
			run = 1;
			runtimer = 50;
		}
	}
	
	if (run == 1) {
		if (darkmode == 0) {
			wspeed = bwspeed + 1;
			
			if (runtimer > 10)
				wspeed = bwspeed + 2;
			
			if (runtimer > 60)
				wspeed = bwspeed + 3;
		}
		
		if (darkmode == 1) {
			wspeed = bwspeed + 2;
			
			if (runtimer > 10)
				wspeed = bwspeed + 4;
			
			if (runtimer > 60)
				wspeed = bwspeed + 5;
		}
	}
	
	if (run == 0)
		wspeed = bwspeed;
	
	if (climbing == 1)
		wspeed = ceil(wspeed * 0.7);
	
	var slowwalker = instance_place(x, y, obj_slowwalk);
	
	if (instance_exists(slowwalker)) {
		run = 0;
		wspeed = clamp(wspeed, 0, slowwalker.maxwalkspeed);
	}
	
	if (global.chapter == 4) {
		if (global.darkzone == 0 && global.plot >= 290)
			wspeed = ceil(wspeed * 0.6);
	}
	
	if (left_h())
		press_l = 1;
	
	if (right_h())
		press_r = 1;
	
	if (up_h())
		press_u = 1;
	
	if (down_h())
		press_d = 1;
	
	px = 0;
	py = 0;
	pressdir = -1;
	
	if (press_r == 1) {
		px = wspeed;
		pressdir = 1;
	}
	
	if (press_l == 1) {
		px = -wspeed;
		pressdir = 3;
	}
	
	if (press_d == 1) {
		py = wspeed;
		pressdir = 0;
	}
	
	if (press_u == 1) {
		py = -wspeed;
		pressdir = 2;
	}
	
	if (nopress == 1 && pressdir != -1)
		global.facing = pressdir;
	
	if (global.facing == 2) {
		if (press_d == 1)
			global.facing = 0;
		
		if (press_u == 0 && pressdir != -1)
			global.facing = pressdir;
	}
	
	if (global.facing == 0) {
		if (press_u == 1)
			global.facing = 2;
		
		if (press_d == 0 && pressdir != -1)
			global.facing = pressdir;
	}
	
	if (global.facing == 3) {
		if (press_r == 1)
			global.facing = 1;
		
		if (press_l == 0 && pressdir != -1)
			global.facing = pressdir;
	}
	
	if (global.facing == 1) {
		if (press_l == 1)
			global.facing = 3;
		
		if (press_r == 0 && pressdir != -1)
			global.facing = pressdir;
	}
	
	if (press_r == 1)
		swordfacing = 1;
	
	if (press_l == 1)
		swordfacing = -1;
	
	if (swordmode == 1) {
		if (button1_p() && swordcon == 0 && global.interact == 0) {
			global.interact = 4;
			swordsprite = rsprite;
			slashmarker = scr_dark_marker(x, y, rsprite);
			slashmarker.depth = depth;
			slashmarker.image_speed = 1;
			
			if (swordfacing == -1) {
				slashmarker.x += sprite_width;
				slashmarker.image_xscale = -image_xscale;
			}
			
			image_alpha = 0;
			fun = 1;
			snd_play(snd_laz_c);
			image_index = 0;
			image_speed = 0.5;
			swordtimer = 0;
			swordcon = 1;
			press_l = 0;
			press_r = 0;
			press_u = 0;
			press_d = 0;
			swordhitbox = instance_create(slashmarker.x, slashmarker.y, obj_swordhitbox);
			swordhitbox.image_xscale = slashmarker.image_xscale;
			swordhitbox.image_yscale = image_yscale;
		}
	}
	
	nopress = 0;
	xmeet = 0;
	ymeet = 0;
	xymeet = 0;
	var checkcol = true;
	
	if (scr_debug() && noclip)
		checkcol = false;
	
	if (checkcol) {
		if (place_meeting(x + px, y + py, obj_solidblock))
			xymeet = 1;
		
		if (place_meeting(x + px, y, obj_solidblock)) {
			if (place_meeting(x + px, y, obj_solidblock)) {
				for (g = wspeed; g > 0; g -= 1) {
					mvd = 0;
					
					if (press_d == 0 && !place_meeting(x + px, y - g, obj_solidblock)) {
						y -= g;
						py = 0;
						break;
						mvd = 1;
					}
					
					if (press_u == 0 && mvd == 0 && !place_meeting(x + px, y + g, obj_solidblock)) {
						y += g;
						py = 0;
						break;
					}
				}
			}
			
			xmeet = 1;
			bkx = 0;
			
			if (px > 0) {
				for (var i = px; i >= 0; i -= 1) {
					if (!place_meeting(x + i, y, obj_solidblock)) {
						px = i;
						bkx = 1;
						break;
					}
				}
			}
			
			if (px < 0) {
				for (var i = px; i <= 0; i += 1) {
					if (!place_meeting(x + i, y, obj_solidblock)) {
						px = i;
						bkx = 1;
						break;
					}
				}
			}
			
			if (bkx == 0)
				px = 0;
		}
		
		if (place_meeting(x, y + py, obj_solidblock)) {
			ymeet = 1;
			bky = 0;
			
			if (place_meeting(x, y + py, obj_solidblock)) {
				for (g = wspeed; g > 0; g -= 1) {
					mvd = 0;
					
					if (press_r == 0 && !place_meeting(x - g, y + py, obj_solidblock)) {
						x -= g;
						px = 0;
						break;
						mvd = 1;
					}
					
					if (mvd == 0 && press_l == 0 && !place_meeting(x + g, y + py, obj_solidblock)) {
						x += g;
						px = 0;
						break;
					}
				}
			}
			
			if (py > 0) {
				for (var i = py; i >= 0; i -= 1) {
					if (!place_meeting(x, y + i, obj_solidblock)) {
						py = i;
						bky = 1;
						break;
					}
				}
			}
			
			if (py < 0) {
				for (var i = py; i <= 0; i += 1) {
					if (!place_meeting(x, y + i, obj_solidblock)) {
						py = i;
						bky = 1;
						break;
					}
				}
			}
			
			if (bky == 0)
				py = 0;
		}
		
		if (place_meeting(x + px, y + py, obj_solidblock)) {
			xymeet = 1;
			bkxy = 0;
			var i = px;
			j = py;
			
			while (j != 0 || i != 0) {
				if (!place_meeting(x + i, y + j, obj_solidblock)) {
					px = i;
					py = j;
					bkxy = 1;
					break;
				}
				
				if (abs(j) >= 1) {
					if (j > 0)
						j -= 1;
					
					if (j < 0)
						j += 1;
				} else {
					j = 0;
				}
				
				if (abs(i) >= 1) {
					if (i > 0)
						i -= 1;
					
					if (i < 0)
						i += 1;
				} else {
					i = 0;
				}
			}
			
			if (bkxy == 0) {
				px = 0;
				py = 0;
			}
		}
	}
	
	runmove = 0;
	
	if (run == 1 && xmeet == 0 && ymeet == 0 && xymeet == 0) {
		if (abs(px) > 0 || abs(py) > 0) {
			runmove = 1;
			runtimer += 1;
			runcounter += 1;
		} else {
			runtimer = 0;
		}
	} else {
		runtimer = 0;
	}
	
	x += px;
	y += py;
}

if (fun == 0) {
	walk = 0;
	
	if (x != nowx && nopress == 0)
		walk = 1;
	
	if (y != nowy && nopress == 0)
		walk = 1;
	
	if (global.chapter == 4 && i_ex(obj_rotating_tower_controller)) {
		if (obj_rotating_tower_controller.yoffset != obj_rotating_tower_controller.yoffset_prev && nopress == 0)
			walk = 1;
		else if (obj_rotating_tower_controller.tower_angle != obj_rotating_tower_controller.tower_angle_prev && nopress == 0)
			walk = 1;
	}
	
	if (walk == 1)
		walkbuffer = 6;
	
	if (walkbuffer > 3 && fun == 0) {
		if (climbing == 0) {
			walktimer += 1.5;
			
			if (runmove == 1 || (run == 1 && climbing == 1))
				walktimer += 1.5;
			
			if (global.chapter == 4) {
				if (global.darkzone == 0 && global.plot >= 290 && (runmove == 1 || run == 1) && xymeet == 0)
					walktimer -= 1.5;
			}
		}
		
		if (climbing == 1) {
			with (obj_rotating_tower_caterpillar)
				index += 0.15;
		}
		
		if (walktimer >= 40)
			walktimer -= 40;
		
		if (walktimer < 10)
			image_index = 0;
		
		if (walktimer >= 10)
			image_index = 1;
		
		if (walktimer >= 20)
			image_index = 2;
		
		if (walktimer >= 30)
			image_index = 3;
	}
	
	if (walkbuffer <= 0 && fun == 0 && climbing == 0) {
		if (walktimer < 10)
			walktimer = 9.5;
		
		if (walktimer >= 10 && walktimer < 20)
			walktimer = 19.5;
		
		if (walktimer >= 20 && walktimer < 30)
			walktimer = 29.5;
		
		if (walktimer >= 30)
			walktimer = 39.5;
		
		image_index = 0;
	}
	
	walkbuffer -= 0.75;
}

if (fun == 0) {
	if (global.facing == 0)
		sprite_index = dsprite;
	
	if (global.facing == 1)
		sprite_index = rsprite;
	
	if (global.facing == 2)
		sprite_index = usprite;
	
	if (global.facing == 3)
		sprite_index = lsprite;
	
	if (climbing == 1)
		sprite_index = climbsprite;
}

if (stepping == 1 && fun == 0) {
	if (image_index == 1 && stepped == 0) {
		if (global.flag[31] == 0 && climbing == 0)
			snd_play(snd_step1);
		
		stepped = 1;
	}
	
	if (image_index == 0 || image_index == 2)
		stepped = 0;
	
	if (image_index == 3 && stepped == 0) {
		if (global.flag[31] == 0 && climbing == 0)
			snd_play(snd_step2);
		
		stepped = 1;
	}
}

if (onebuffer < 0) {
	if (global.interact == 0) {
		if (button1_p()) {
			thisinteract = 0;
			d = global.darkzone + 1;
			
			if (global.facing == 1) {
				if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactable, false, true))
					thisinteract = 1;
				
				if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactablesolid, false, true))
					thisinteract = 2;
			}
			
			if (thisinteract > 0) {
				if (thisinteract == 1)
					interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactable, false, true);
				
				if (thisinteract == 2)
					interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x + sprite_width + (13 * d), y + sprite_height, obj_interactablesolid, false, true);
				
				if (interactedobject != -4) {
					with (interactedobject)
						facing = 3;
					
					with (interactedobject)
						scr_interact();
				}
			}
			
			thisinteract = 0;
			
			if (global.facing == 3) {
				if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactable, false, true))
					thisinteract = 1;
				
				if (collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactablesolid, false, true))
					thisinteract = 2;
			}
			
			if (thisinteract > 0) {
				if (thisinteract == 1)
					interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactable, false, true);
				
				if (thisinteract == 2)
					interactedobject = collision_rectangle(x + (sprite_width / 2), y + (6 * d) + (sprite_height / 2), x - (13 * d), y + sprite_height, obj_interactablesolid, false, true);
				
				if (interactedobject != -4) {
					with (interactedobject)
						facing = 1;
					
					with (interactedobject)
						scr_interact();
				}
			}
			
			thisinteract = 0;
			
			if (global.facing == 0) {
				if (collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactable, false, true))
					thisinteract = 1;
				
				if (collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactablesolid, false, true))
					thisinteract = 2;
			}
			
			if (thisinteract > 0) {
				if (thisinteract == 1)
					interactedobject = collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactable, false, true);
				
				if (thisinteract == 2)
					interactedobject = collision_rectangle(x + (4 * d), y + (28 * d), (x + sprite_width) - (4 * d), y + sprite_height + (15 * d), obj_interactablesolid, false, true);
				
				if (interactedobject != -4) {
					with (interactedobject)
						facing = 2;
					
					with (interactedobject)
						scr_interact();
				}
			}
			
			thisinteract = 0;
			
			if (global.facing == 2) {
				if (collision_rectangle(x + 3, (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactable, false, true))
					thisinteract = 1;
				
				if (collision_rectangle(x + 3, (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactablesolid, false, true))
					thisinteract = 2;
			}
			
			if (thisinteract > 0) {
				if (thisinteract == 1)
					interactedobject = collision_rectangle(x + (3 * d), (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactable, false, true);
				
				if (thisinteract == 2)
					interactedobject = collision_rectangle(x + (3 * d), (y + sprite_height) - (5 * d), (x + sprite_width) - (5 * d), y + (5 * d), obj_interactablesolid, false, true);
				
				if (interactedobject != -4) {
					with (interactedobject)
						facing = 0;
					
					with (interactedobject)
						scr_interact();
				}
			}
		}
	}
}

onebuffer -= 1;
twobuffer -= 1;
threebuffer -= 1;
climbbuffer--;

if (climbbuffer <= 0)
	climbing = 0;

with (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_doorparent, 0, 0))
	event_user(9);

if (battlemode == 1) {
	global.inv -= 1;
	
	if (global.inv < 0) {
		if (sprite_index == climbsprite) {
			with (collision_rectangle(x + 12, y + 28, x + 27, y + 37, obj_overworldbulletparent, 1, 0))
				event_user(5);
			
			with (collision_line(x + 12, y + 37, x + 19, y + 45, obj_overworldbulletparent, 1, 0))
				event_user(5);
			
			with (collision_line(x + 26, y + 37, x + 19, y + 45, obj_overworldbulletparent, 1, 0))
				event_user(5);
		} else {
			with (collision_rectangle(x + 12, y + 40, x + 27, y + 49, obj_overworldbulletparent, 1, 0))
				event_user(5);
			
			with (collision_line(x + 12, y + 49, x + 19, y + 57, obj_overworldbulletparent, 1, 0))
				event_user(5);
			
			with (collision_line(x + 26, y + 49, x + 19, y + 57, obj_overworldbulletparent, 1, 0))
				event_user(5);
		}
	}
}

if (global.chapter == 4) {
	if (!init_clothes && global.darkzone == 0) {
		init_clothes = true;
		
		if (global.plot >= 11 && global.plot < 35) {
			dsprite = spr_kris_walk_down_church;
			rsprite = spr_kris_walk_right_church;
			lsprite = spr_kris_walk_left_church;
		} else {
			dsprite = spr_krisd;
			rsprite = spr_krisr;
			usprite = spr_krisu;
		}
	}
}

if (scr_debug()) {
	if (sunkus_kb_check_pressed(45)) {
		if (room_exists(room + ROOM_INITIALIZE))
			room_goto_next();
	}
	
	if (sunkus_kb_check_pressed(46)) {
		if (room_exists(room - ROOM_INITIALIZE))
			room_goto_previous();
	}
	
	if (sunkus_kb_check_pressed(36) && floorheight == 0) {
		if (sunkus_kb_check(50)) {
			room_goto(room_krisroom);
			global.plot = 0;
			global.darkzone = 0;
		}
		
		if (sunkus_kb_check(51)) {
			room_goto(room_dw_castle_area_1);
			global.plot = 7;
			global.darkzone = 1;
		}
		
		if (sunkus_kb_check(55))
			room_goto(room_legend_neo);
		
		if (sunkus_kb_check(56)) {
			room_goto(room_battletest);
			global.darkzone = 1;
		}
		
		if (sunkus_kb_check(57)) {
			room_goto(room_bullettest);
			global.darkzone = 1;
		}
	}
}
