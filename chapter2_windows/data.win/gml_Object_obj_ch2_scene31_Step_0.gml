if (con == 10 && !d_ex()) {
	con = 11;
	instance_deactivate_object(obj_readable_room1);
	global.interact = 1;
	global.facing = 2;
	anykey = true;
	audio_sound_gain(global.currentsong[1], 0, 1000);
	var foreground = scr_marker(0, 0, spr_cutscene_31_foreground);
	
	with (foreground)
		depth = 95000;
	
	faucet = scr_marker(194, 106, spr_cutscene_31_faucet_running);
	faucet.image_speed = 0.25;
	faucet.visible = 0;
	
	with (faucet)
		scr_depth();
	
	cabinet_heartless = scr_marker(faucet.x, faucet.y, spr_cutscene_31_cabinet_heartless);
	cabinet_heartless.image_speed = 0;
	cabinet_heartless.visible = 0;
	
	with (cabinet_heartless)
		scr_depth();
	
	cabinet_heart = scr_marker(faucet.x, faucet.y, spr_cutscene_31_cabinet_heart);
	cabinet_heart.image_speed = 0;
	cabinet_heart.visible = 0;
	
	with (cabinet_heart)
		scr_depth();
	
	window = scr_marker(52, 89, spr_cutscene_31_window_raise_bg);
	window.image_speed = 0;
	
	with (window)
		depth = 1000000;
	
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	obj_cutscene_master.save_object[0] = faucet;
	obj_cutscene_master.save_object[1] = window;
	obj_cutscene_master.save_object[2] = cabinet_heart;
	obj_cutscene_master.save_object[3] = cabinet_heartless;
	c_var_instance(faucet, "depth", kr_actor.depth + 1000);
	c_mus2("volume", 0, 10);
	c_sel(kr);
	c_walkdirect_wait(202, 109, 10);
	c_facing("u");
	c_wait(10);
	c_mus("free_all");
	c_mus2("initloop", "sink_noise.ogg", 0);
	c_soundplay(snd_noise);
	c_var_instance(faucet, "visible", 1);
	c_speaker("no_name");
	c_msgsetloc(0, "* It started to run./", "obj_ch2_scene31_slash_Step_0_gml_60_0");
	c_msgnextloc("* It's making a lot of noise./%", "obj_ch2_scene31_slash_Step_0_gml_61_0");
	c_talk_wait();
	c_waitcustom();
}

if (con == 11 && anykey == true && customcon == 1) {
	keytimer++;
	
	if (keytimer >= 60 && keytimer < maxshaketime) {
		if (keyboard_check_pressed(vk_anykey) || scr_gamepad_check_pressed_any()) {
			maxshaketime--;
			
			with (kr_actor)
				scr_shakeobj();
		}
	}
	
	if (keytimer >= maxshaketime) {
		con = 12;
		anykey = false;
	}
}

if (con == 12 || scr_cutscene_loaded()) {
	con = 49;
	alarm[0] = 30;
	c_waitcustom_end();
	c_sel(kr);
	c_autowalk(0);
	c_wait(5);
	c_sprite(spr_cutscene_31_kris_remove_soul);
	c_setxy(190, 109);
	c_halt();
	c_wait(90);
	c_wait(1);
	c_walkdirect(209, 109, 4);
	c_imagespeed(0.5);
	c_wait(4);
	c_shakeobj();
	c_soundplay(snd_noise);
	c_wait(2);
	c_imagespeed(0);
	c_wait(120);
	c_imagespeed(0.1);
	c_wait(70);
	c_imagespeed(0);
	c_wait(30);
	c_wait(30);
	c_imagespeed(0.5);
	c_wait(4);
	c_walkdirect(196, 109, 4);
	c_imageindex(13);
	c_imagespeed(0.25);
	c_shake();
	c_soundplay(snd_damage);
	c_soundplay(snd_hurt1);
	c_wait(31);
	c_imagespeed(0);
	c_imageindex(20);
	c_wait(10);
	
	repeat (4) {
		c_imagespeed(0.5);
		c_soundplay(snd_hurt1);
		c_imageindex(16);
		c_wait(10);
	}
	
	c_imagespeed(0);
	c_walkdirect(204, 109, 4);
	c_instance(206, 130, 370);
	c_soundplay(snd_break1);
	c_soundplay(snd_grab);
	c_imageindex(38);
	c_wait(3);
	c_imageindex(37);
	c_wait(1);
	c_imageindex(35);
	c_wait(60);
	c_imagespeed(0);
	c_wait(70);
	c_imageindex(37);
	c_wait(3);
	c_imageindex(13);
	c_var_instance(cabinet_heart, "visible", 1);
	c_var_instance(cabinet_heart, "image_index", 3);
	c_shake();
	c_soundplay(snd_hurt1);
	c_soundplay(snd_damage);
	c_wait(5);
	c_imageindex(26);
	c_wait(45);
	c_soundplay(snd_doorclose);
	c_var_instance(cabinet_heart, "image_index", 4);
	c_wait(2);
	c_var_instance(cabinet_heart, "image_index", 5);
	c_wait(48);
	c_imageindex(42);
	c_wait(10);
	c_imageindex(43);
	c_wait(10);
	c_imageindex(44);
	c_wait(30);
	c_var_instance(cabinet_heart, "visible", 0);
	c_wait(60);
	c_setxy(210, 109);
	c_autowalk(0);
	c_depth(0);
	c_imageindex(0);
	c_sprite(spr_cutscene_31_kris_bathroom_walk_slow);
	c_shakestep(-10, 10);
	c_wait(30);
	c_shakestep(-10, 2);
	c_wait(30);
	c_shakestep(-15, 0);
	c_wait(30);
	c_shakestep(-10, 0);
	c_wait(30);
	c_shakestep(-10, 0);
	c_wait(30);
	c_shakestep(-15, 0);
	c_wait(30);
	c_shakestep(-10, 0);
	c_wait(30);
	c_shakestep(-15, 0);
	c_wait(30);
	c_shakestep(-10, 0);
	c_wait(30);
	c_shakestep(-15, 0);
	c_wait(30);
	c_shakestep(-10, 0);
	c_wait(30);
	c_shakestep(-15, 0);
	c_wait(30);
	c_shakestep(-7, 0);
	c_wait(30);
	c_sprite(spr_cutscene_31_window_raise_kris);
	c_setxy(52, 89);
	c_imageindex(0);
	c_imagespeed(0);
	c_imageindex(1);
	c_wait(15);
	c_imageindex(2);
	c_wait(15);
	c_imageindex(3);
	c_wait(60);
	c_var_instance(window, "image_speed", 0.25);
	c_wait(2);
	c_soundplay(snd_noise);
	c_imagespeed(0.5);
	c_wait(4);
	c_imagespeed(0);
	c_wait(8);
	c_var_instance(window, "image_speed", 0);
	c_wait(52);
	c_soundplay(snd_wing);
	c_imageindex(7);
	c_shakeobj();
	c_wait(30);
	c_soundplay(snd_wing);
	c_imageindex(8);
	c_shakeobj();
	c_wait(30);
	c_soundplay(snd_wing);
	c_imageindex(9);
	c_shakeobj();
	c_wait(60);
	c_soundplay(snd_heavyswing);
	c_imageindex(10);
	c_wait(3);
	c_imageindex(12);
	c_wait(3);
	c_imageindex(14);
	c_wait(3);
	c_imagespeed(0);
	c_imageindex(16);
	c_wait(24);
	c_shake();
	c_soundplay(snd_bump);
	c_soundplay(snd_wing);
	c_mus2("volume", 0, 120);
	c_wait(180);
	c_mus("free");
	c_mus2("initloop", "home.ogg", 0);
	c_mus2("volume", 0, 0);
	c_mus2("volume", 0.5, 60);
	c_speaker("toriel");
	c_msgsetloc(0, "* Well^1, let us get the flour./", "obj_ch2_scene31_slash_Step_0_gml_385_0");
	c_facenext("susie", "C");
	c_msgnextloc("\\EC* So^1, that's..^1. this bag? And you just.../", "obj_ch2_scene31_slash_Step_0_gml_387_0");
	c_msgnextloc("\\EE* ..^1. oops./", "obj_ch2_scene31_slash_Step_0_gml_388_0");
	c_facenext("toriel", 4);
	c_msgnextloc("\\E4* Hee hee hee^1! Susie^1, you have flour on your nose!/", "obj_ch2_scene31_slash_Step_0_gml_390_0");
	c_facenext("susie", "3");
	c_msgnextloc("\\E3* Uh^1, I meant to do that./", "obj_ch2_scene31_slash_Step_0_gml_392_0");
	c_facenext("toriel", 4);
	c_msgnextloc("\\E4* Thought you would stop to \"smell the flour^1,\" eh?/", "obj_ch2_scene31_slash_Step_0_gml_394_0");
	c_facenext("susie", 9);
	c_msgnextloc("\\E9* Hahaha^1, ughhh - ACHOO^1! C'mon!!!/", "obj_ch2_scene31_slash_Step_0_gml_396_0");
	c_facenext("toriel", 0);
	c_msgnextloc("\\E0* Now^1, onto the next part.../%", "obj_ch2_scene31_slash_Step_0_gml_398_0");
	c_talk_wait();
	c_wait(90);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. so^1, where the he--^1 uh^1, HECK^1, is Kris?/", "obj_ch2_scene31_slash_Step_0_gml_405_0");
	c_facenext("toriel", 1);
	c_msgnextloc("\\E0* Oh^1, Kris^1, er..^1. does this sometimes./", "obj_ch2_scene31_slash_Step_0_gml_407_0");
	c_facenext("susie", 0);
	c_msgnextloc("\\E0* Well they should hurry. I'm getting sleepy./", "obj_ch2_scene31_slash_Step_0_gml_409_0");
	c_facenext("toriel", 4);
	c_msgnextloc("\\E4* Do you know what they call a sleeping Susie?/", "obj_ch2_scene31_slash_Step_0_gml_411_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Huh...? What?/", "obj_ch2_scene31_slash_Step_0_gml_413_0");
	c_facenext("toriel", 4);
	c_msgnextloc("\\E4* They would call her..^1. A \"Snoozie!\"/", "obj_ch2_scene31_slash_Step_0_gml_415_0");
	c_facenext("susie", "A");
	c_msgnextloc("\\EA* Uhh..^1. haha. Then.../", "obj_ch2_scene31_slash_Step_0_gml_417_0");
	c_msgnextloc("\\E2* Then I guess you'd be^1, uh..^1. \"Snoriel?\"/", "obj_ch2_scene31_slash_Step_0_gml_418_0");
	c_facenext("toriel", 4);
	c_msgnextloc("\\E4* HAHAHA!^1! Hahaha!^1! Snoriel!!!/", "obj_ch2_scene31_slash_Step_0_gml_420_0");
	c_msgnextloc("* Snoozy and Snoriel!!!/", "obj_ch2_scene31_slash_Step_0_gml_421_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Uhh^1, heheh^1, you..^1. really liked that one^1, huh?/", "obj_ch2_scene31_slash_Step_0_gml_423_0");
	c_facenext("toriel", 0);
	c_msgnextloc("\\E4* Wasn't it funny?/%", "obj_ch2_scene31_slash_Step_0_gml_425_0");
	c_talk_wait();
	c_wait(90);
	torielstring = stringsetloc("Toriel???", "obj_ch2_scene31_slash_Step_0_gml_431_0");
	
	if (global.lang == "ja") {
		if (global.is_console == true)
			scr_smallface(0, "susie", 7, 372, 219, torielstring);
		else
			scr_smallface(0, "susie", 7, 372, 244, torielstring);
	} else if (global.is_console == true) {
		scr_smallface(0, "susie", 7, 442, 208, torielstring);
	} else {
		scr_smallface(0, "susie", 7, 442, 230, torielstring);
	}
	
	c_speaker("toriel");
	c_msgsetloc(0, "\\E5* ..^1. Alright^1, where the HELL is Kris?\\f0/%", "obj_ch2_scene31_slash_Step_0_gml_434_0");
	c_talk_wait();
	c_speaker("toriel");
	c_msgsetloc(0, "\\E1* The pie is nearly done.../", "obj_ch2_scene31_slash_Step_0_gml_438_0");
	c_msgnextloc("\\E8* Oh^1, the sugar^1! Wait here a moment^1, I left it in the car!/", "obj_ch2_scene31_slash_Step_0_gml_439_0");
	c_facenext("susie", "A");
	c_msgnextloc("\\EA* OK!/%", "obj_ch2_scene31_slash_Step_0_gml_441_0");
	c_talk_wait();
	c_wait(60);
	c_mus2("volume", 0, 30);
	c_wait(30);
	c_mus("free");
	c_imagespeed(0.25);
	c_wait(12);
	c_imagespeed(0);
	c_wait(90);
	c_imagespeed(0.25);
	c_wait(12);
	c_imagespeed(0);
	c_wait(90);
	c_soundplay(snd_wing);
	c_imageindex(26);
	c_shakeobj();
	c_wait(90);
	c_soundplay(snd_heavyswing);
	c_sprite(spr_cutscene_31_kris_jump);
	c_setxy(50, 110);
	c_autowalk(0);
	c_var_instance(kr_actor, "hspeed", 8);
	c_var_instance(kr_actor, "gravity", 0.5);
	c_var_instance(kr_actor, "friction", 0.3);
	c_wait(10);
	c_sprite(spr_cutscene_31_kris_kneel_stand);
	c_flip("x");
	c_addxy(-20, -8);
	c_var_instance(kr_actor, "friction", 0.5);
	c_var_instance(kr_actor, "vspeed", 0);
	c_var_instance(kr_actor, "gravity", 0);
	c_soundplay(snd_wing);
	c_mus2("initloop", "sink_noise.ogg", 0);
	c_mus2("volume", 0, 0);
	c_mus2("volume", 1, 90);
	c_wait(90);
	c_imageindex(1);
	c_wait(4);
	c_imageindex(2);
	c_wait(30);
	c_imagespeed(0);
	c_addxy(-6, 2);
	c_sprite(spr_cutscene_31_kris_bathroom_walk_slow);
	c_imageindex(0);
	c_shakestep(15, 0);
	c_wait(30);
	c_shakestep(10, 0);
	c_wait(30);
	c_shakestep(15, 0);
	c_wait(30);
	c_shakestep(10, 0);
	c_wait(30);
	c_shakestep(15, -1);
	c_wait(30);
	c_flip("x");
	c_autowalk(1);
	c_facing("u");
	c_wait(10);
	c_var_instance(kr_actor, "speed", 0);
	c_var_instance(kr_actor, "friction", 0);
	c_walk_wait("u", 0.4, 60);
	c_wait(15);
	c_autowalk(0);
	c_sprite(spr_cutscene_31_kris_wash_hands);
	c_setxy(189, 103);
	c_halt();
	c_wait(6);
	c_imageindex(1);
	c_wait(15);
	c_imageindex(2);
	c_wait(15);
	c_sprite(spr_cutscene_31_kris_wash_hands_loop);
	c_imageindex(0);
	c_wait(30);
	c_imagespeed(0);
	c_var_instance(faucet, "visible", 0);
	c_soundplay(snd_noise);
	c_mus("free");
	c_wait(60);
	c_sprite(spr_cutscene_31_kris_dry_hands);
	c_setxy(195, 108);
	c_halt();
	c_soundplay(snd_grab);
	c_wait(3);
	c_imageindex(1);
	c_wait(3);
	c_imageindex(2);
	c_wait(3);
	c_imageindex(3);
	c_wait(3);
	c_imageindex(4);
	c_wait(40);
	c_sprite(spr_cutscene_31_kris_remove_soul);
	c_walkdirect(200, 109, 4);
	c_imageindex(39);
	c_imagespeed(0);
	c_soundplay(snd_dooropen);
	c_var_instance(cabinet_heart, "visible", 1);
	c_var_instance(cabinet_heart, "image_index", 5);
	c_wait(2);
	c_var_instance(cabinet_heart, "image_index", 4);
	c_wait(2);
	c_var_instance(cabinet_heart, "image_index", 3);
	c_wait(30);
	c_imageindex(38);
	c_wait(2);
	c_var_instance(cabinet_heart, "visible", 0);
	c_var_instance(cabinet_heartless, "visible", 1);
	c_var_instance(cabinet_heartless, "image_index", 3);
	c_imageindex(37);
	c_soundplay(snd_noise);
	c_wait(2);
	c_imageindex(37);
	c_wait(6);
	c_soundplay(snd_doorclose);
	c_var_instance(cabinet_heartless, "image_index", 2);
	c_wait(4);
	c_var_instance(cabinet_heartless, "image_index", 1);
	c_wait(4);
	c_var_instance(cabinet_heartless, "visible", 0);
	c_wait(30);
	c_shake();
	c_walkdirect(192, 109, 2);
	c_imageindex(13);
	c_imagespeed(0.5);
	c_instance(200, 127, 370);
	c_soundplay(snd_grab);
	c_soundplay(snd_hurt1);
	c_wait(14);
	c_imagespeed(0);
	c_wait(30);
	c_soundplay(snd_bump);
	c_shakeobj();
	c_wait(80);
	c_setxy(200, 109);
	c_autowalk(1);
	c_facing("d");
	c_mus2("initloop", "home.ogg", 0);
}

if (con == 50 && !d_ex()) {
	con = 60;
	c_actortokris();
	c_terminatekillactors();
}

if (con == 60 && !i_ex(obj_cutscene_master)) {
	con = 0;
	global.interact = 0;
	global.facing = 0;
	global.plot = 211;
	instance_destroy(faucet);
	instance_activate_object(obj_readable_room1);
	instance_activate_object(obj_doorB);
	instance_destroy();
}
