if (con == 0 && obj_mainchara.x > (x - 6) && global.interact == 0) {
	global.interact = 1;
	con = 1;
}

if (con == 1) {
	con = 2;
	
	with (obj_mainchara)
		visible = 0;
	
	with (obj_caterpillarchara)
		visible = 0;
	
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	niseralsei = scr_dark_marker(-100, -100, spr_ralsei_dance2);
	niseralsei = scr_dark_marker(-100, -100, spr_ralsei_walk_down_sleep);
	niseralsei.image_alpha = 0;
	niseralsei.image_speed = 0.1;
	
	if (floor(random(20)) == 0)
		niseralsei.sprite_index = spr_ralsei_dance2;
}

if (con == 2) {
	con = 3;
	kr_y = kr_actor.y;
	
	if (kr_y < 270)
		kr_y = 270;
	
	c_pannable(1);
	c_sel(kr);
	c_walkdirect(630, kr_y, 15);
	c_sel(su);
	c_walkdirect(555, su_actor.y, 15);
	c_sel(ra);
	c_walkdirect(495, ra_actor.y, 15);
	c_wait(16);
	c_sel(su);
	c_facing("u");
	c_emote("!", 30);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* H..^1. huh?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_58_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("u");
	c_sel(ra);
	c_facing("u");
	c_sel(su);
	c_walkdirect(555, 205, 15);
	c_wait(45);
	c_sel(su);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Hey^1, it says this is Noelle's room!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_80_0");
	c_msgnextloc("\\E9* Kris^1, let's go in and save her!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_81_0");
	c_msgnextloc("\\EA* And uh^1, y'know^1, teach her not to get in our way./%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_82_0");
	c_talk_wait();
	c_wait(30);
	c_emote("...", 30);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* ..^1. Kris?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_93_0");
	c_talk_wait();
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* Fine^1, I'll do it myself!/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_100_0");
	c_talk_wait();
	c_var_instance(door, "visible", 0);
	c_soundplay(snd_dooropen);
	c_wait(5);
	c_walkdirect(555, 185, 5);
	c_wait(5);
	c_soundplay(snd_doorclose);
	c_var_instance(door, "visible", 1);
	c_var_instance(su_actor, "visible", 0);
	c_shake();
	c_wait(120);
	c_sel(ra);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E0* Kris.../", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_122_0");
	c_msgnextloc("\\E2* Don't you wonder..^1. how they're doing in there?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_123_0");
	c_talk_wait();
	c_facing("u");
	c_wait(90);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EQ* Umm^1, I said^1, don't you wonder.../", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_133_0");
	c_msgnextloc("\\EI* ..^1. how Noelle and Susie are doing?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_134_0");
	c_talk_wait();
	c_facing("u");
	c_wait(90);
	c_facing("r");
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EQ* Y-you're right^1, Kris^1, it has only been 30 seconds.../", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_144_0");
	c_msgnextloc("\\EQ* (I'll wait a minute first...)/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_145_0");
	c_talk_wait();
	c_facing("u");
	c_wait(90);
	c_var_lerp_instance(ra_actor, "image_alpha", 1, 0, 60);
	c_var_instance(niseralsei, "x", 495);
	c_var_instance(niseralsei, "y", ra_actor.y);
	c_var_lerp_instance(niseralsei, "image_alpha", 0, 1, 60);
	c_wait(150);
	c_var_instance(niseralsei, "image_alpha", 0);
	c_var_instance(ra_actor, "image_alpha", 1);
	c_sprite(spr_ralsei_surprised_down);
	c_autowalk(0);
	c_imageindex(1);
	c_shakeobj();
	c_sel(su);
	c_facing("d");
	c_var_instance(door, "visible", 0);
	c_var_instance(su_actor, "visible", 1);
	c_soundplay(snd_dooropen);
	c_wait(5);
	c_walkdirect(555, su_actor.y, 10);
	c_wait(5);
	c_soundplay(snd_doorclose);
	c_var_instance(door, "visible", 1);
	c_shake();
	c_wait(5);
	c_sel(kr);
	c_facing("l");
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Alright let's go!/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_194_0");
	c_talk_wait();
	c_sel(ra);
	c_shakeobj();
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EU* H-huh? What!? W-wait -- wait!?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_202_0");
	c_msgnextloc("\\EU* Wait^1, we were supposed to --/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_203_0");
	c_facenext("susie", 7);
	c_msgnextloc("\\E7* Hey^1, let's go!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_205_0");
	c_facenext("ralsei", 21);
	c_msgnextloc("\\EL* W-wait^1! Wait^1, Susie!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_207_0");
	c_msgnextloc("\\EK* What^1, um^1, happened in there?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_208_0");
	c_facenext("susie", 25);
	c_msgnextloc("\\EP* What do you mean what happened?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_210_0");
	c_facenext("ralsei", 19);
	c_msgnextloc("\\EJ* U-umm..^1. in there^1, with Noelle!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_212_0");
	c_facenext("susie", 21);
	c_msgnextloc("\\EL* Nothin./", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_214_0");
	c_facenext("ralsei", 20);
	c_msgnextloc("\\EK* N..^1. Nothing? Nothing at all?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_216_0");
	c_facenext("susie", 10);
	c_msgnextloc("\\EA* Just told her everything is a dream./", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_218_0");
	c_msgnextloc("\\E2* Now she's feeling better./", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_219_0");
	c_facenext("ralsei", 20);
	c_msgnextloc("\\EK* ..^1. anything else?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_221_0");
	c_facenext("susie", 7);
	c_msgnextloc("\\E7* No and let's go./%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_223_0");
	c_talk();
	c_wait_box(4);
	c_sel(ra);
	c_facing("r");
	c_imagespeed(0.5);
	c_wait_box(6);
	c_sel(su);
	c_facing("l");
	c_wait_box(8);
	c_sel(ra);
	c_imagespeed(0);
	c_imageindex(0);
	c_wait_talk();
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	var small_text = stringsetloc("HEY!", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_247_0");
	scr_smallface(0, "ralsei", 32, "rightmid", "bottom", small_text);
	c_msgsetloc(0, "\\E2* Psst..^1. I'll tell you later^1, Kris. \\f0 /", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_248_0");
	c_facenext("ralsei", 26);
	c_msgnextloc("\\EQ* (Oh well^1, as long as Susie's happy..^1. right?)/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_251_0_b");
	c_talk_wait();
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}

if (con == 3 && !i_ex(obj_cutscene_master)) {
	global.interact = 0;
	global.flag[915] = 9;
	con = 4;
	global.facing = 0;
	instance_destroy();
}
