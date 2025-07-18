if (con == 0) {
	global.interact = 1;
	snd_free_all();
	con = 1;
}

if (con == 1) {
	con = 2;
	global.facing = 0;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	kr_actor.sprite_index = spr_krisd_dark;
	su_actor.sprite_index = spr_susie_walk_down_dw_unhappy;
	ra_actor.sprite_index = spr_ralsei_walk_down;
	trash = actor_count + 1;
	trash_actor = instance_create(205, 120, obj_actor);
	scr_actor_setup_nofacing(trash, trash_actor, "trash");
	trash_actor.sprite_index = spr_spamton_trash_stop_sign;
	trash_actor.depth = 200;
	trash_actor.image_xscale = 2;
	trash_actor.image_yscale = 2;
	trash_actor.auto_depth = 0;
}

if (con == 2 || scr_cutscene_loaded()) {
	heal = 0;
	con = 3;
	alarm[0] = 30;
	c_pannable(1);
	c_sel(kr);
	c_flip("y");
	c_setxy(368, 186);
	c_sel(su);
	c_flip("y");
	c_setxy(235, 165);
	c_sel(ra);
	c_flip("y");
	c_setxy(290, 160);
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30);
	c_wait(60);
	c_sel(su);
	c_autowalk(0);
	c_walk_wait("d", 5, 5);
	c_wait(10);
	c_flip("y");
	c_walk_wait("u", 5, 12);
	c_autowalk(1);
	c_wait(10);
	c_sel(su);
	c_imageindex(0);
	c_autowalk(1);
	c_facing("susieunhappy");
	c_facing("d");
	c_wait(10);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* L..^1. Looks like this trash saved us./%", "obj_ch2_scene11b_slash_Step_0_gml_76_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_facing("r");
	c_wait(15);
	c_sel(kr);
	c_autowalk(0);
	c_walk_wait("d", 5, 5);
	c_wait(10);
	c_flip("y");
	c_autodepth(0);
	c_walk_wait("u", 5, 10);
	c_autodepth(1);
	c_autowalk(1);
	c_wait(15);
	c_sel(ra);
	c_autowalk(0);
	c_walk_wait("d", 5, 8);
	c_wait(10);
	c_flip("y");
	c_walk_wait("u", 5, 13);
	c_autowalk(1);
	c_wait(13);
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* C'mon.../%", "obj_ch2_scene11b_slash_Step_0_gml_115_0");
	c_talk_wait();
	c_wait(5);
	c_sel(kr);
	c_jump_sprite(395, 220, 30, 15, spr_kris_fall_d_dw, spr_kris_dw_landed);
	c_wait(5);
	c_wait(10);
	c_soundplay(snd_impact);
	c_wait(10);
	c_sel(ra);
	c_jump_sprite(315, 215, 30, 15, spr_ralsei_jump, spr_teacup_ralsei_land);
	c_wait(5);
	c_wait(10);
	c_soundplay(snd_impact);
	c_wait(5);
	c_sel(su);
	c_autodepth(0);
	c_depth(100);
	c_jump_sprite(190, 27, 30, 15, spr_susie_dw_fall_d, spr_susie_dw_landed);
	c_wait(5);
	c_wait(15);
	c_soundplay(snd_impact);
	c_sel(trash);
	c_shakeobj();
	c_sel(su);
	c_wait(5);
	c_wait(40);
	c_sel(ra);
	c_facing("u");
	c_sel(kr);
	c_facing("u");
	c_sel(su);
	c_autofacing(0);
	c_autowalk(0);
	c_sprite(spr_susie_pose);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Haha^1, who's king of the trash pile now!?/%", "obj_ch2_scene11b_slash_Step_0_gml_183_0");
	c_talk_wait();
	c_sprite(spr_susier_dark_laugh);
	c_soundplay(snd_suslaugh);
	c_imagespeed(0.2);
	c_wait(60);
	c_sel(su);
	c_imagespeed(0);
	c_sel(trash);
	c_autowalk(0);
	c_shakeobj();
	c_soundplay(snd_wing);
	c_wait(15);
	c_sel(ra);
	c_sprite(spr_ralsei_hurt_overworld);
	c_flip("h");
	c_addxy(-90, 0);
	c_sel(kr);
	c_facing("l");
	c_sel(trash);
	c_soundplay(snd_wing);
	c_soundplay(snd_swing);
	c_var("hspeed", -10);
	c_var("gravity", 0.3);
	c_sel(su);
	c_var("friction", 0);
	c_var("vspeed", -4);
	c_var("gravity", 1);
	c_sprite(spr_susie_sheeh);
	c_wait(6);
	c_sprite(spr_susie_dw_fall_ball);
	c_imagespeed(0.5);
	c_wait(14);
	c_sel(su);
	c_var("gravity", 0);
	c_var("friction", 2);
	c_imageindex(0);
	c_imagespeed(0);
	c_sprite(spr_susie_dw_landed);
	c_shakeobj();
	c_soundplay(snd_sussurprise);
	c_soundplay(snd_closet_impact);
	c_shake();
	c_wait(30);
	c_sel(ra);
	c_flip("h");
	c_addxy(90, 0);
	c_facing("l");
	c_sel(ra);
	c_walk("l", 8, 5);
	c_sel(kr);
	c_walk("l", 8, 5);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EZ* O..^1. Ow...!/", "obj_ch2_scene11b_slash_Step_0_gml_251_0");
	c_facenext("ralsei", "C");
	c_msgnextloc("* Susie^1, are you alright?/%", "obj_ch2_scene11b_slash_Step_0_gml_253_0");
	c_talk_wait();
	c_wait(5);
	c_sel(su);
	c_imagespeed(0.25);
	c_wait(8);
	c_imagespeed(0);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\EQ* ..^1. Heh^1, it's nothing./", "obj_ch2_scene11b_slash_Step_0_gml_272_0");
	c_msgnextloc("\\EQ* I just.../%", "obj_ch2_scene11b_slash_Step_0_gml_273_0");
	c_talk_wait();
	c_sel(su);
	c_imageindex(0);
	c_shakeobj();
	c_soundplay(snd_wing);
	c_wait(10);
	c_msgsetloc(0, "\\EV* O... ow./%", "obj_ch2_scene11b_slash_Step_0_gml_279_0");
	c_talk_wait();
	c_sel(ra);
	c_walk_wait("l", 1, 25);
	c_wait(30);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EB* ... sure you don't want me to look?/", "obj_ch2_scene11b_slash_Step_0_gml_289_0");
	c_facenext("susie", "5");
	c_msgnextloc("\\E5* L-look at what? I'm fine!/%", "obj_ch2_scene11b_slash_Step_0_gml_291_0");
	c_talk_wait();
	c_wait(30);
	c_sprite(spr_ralsei_hug_hatless);
	c_autodepth(0);
	c_depth(50);
	c_flip("h");
	c_addxy(-8, 6);
	c_imageindex(0);
	c_autowalk(0);
	c_walkdirect_wait(277, 227, 20);
	c_wait(30);
	c_imagespeed(0.2);
	c_wait(15);
	c_soundplay(snd_swallow);
	c_imagespeed(0);
	c_wait(60);
	c_sel(su);
	c_sprite(spr_susie_sheeh);
	c_soundplay(snd_wing);
	c_setxy(205, 221);
	c_shakeobj();
	c_wait(5);
	c_msgside("top");
	c_msgsetloc(0, "\\EH* WOAH HEY WHAT THE HECK ARE YOU--/%", "obj_ch2_scene11b_slash_Step_0_gml_316_0");
	c_talk_wait();
	c_var_instance(id, "heal", true);
	c_wait(45);
	c_imagespeed(0);
	c_wait(30);
	c_sel(ra);
	c_autofacing(0);
	c_walk_wait("r", 5, 5);
	c_wait(10);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Feel better?/%", "obj_ch2_scene11b_slash_Step_0_gml_355_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_09_susie_exasperated);
	c_addxy(4, -4);
	c_shakeobj();
	c_speaker("susie");
	c_msgsetloc(0, "\\EH* FEEL BETTER!^1? AFTER YOU JUST CAME UP AND--/%", "obj_ch2_scene11b_slash_Step_0_gml_362_0");
	c_talk_wait();
	c_flip("h");
	c_wait(60);
	c_flip("h");
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\EM* Umm..^1. doesn't feel WORSE^1, I guess./", "obj_ch2_scene11b_slash_Step_0_gml_372_0");
	c_msgnextloc("\\EV* .../%", "obj_ch2_scene11b_slash_Step_0_gml_373_0");
	c_talk_wait();
	c_wait(15);
	c_addxy(-2, -6);
	c_sprite(spr_cutscene_11b_susie_scratch);
	c_imagespeed(0.25);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* How do you do that^1, anyway?/", "obj_ch2_scene11b_slash_Step_0_gml_383_0");
	c_msgnextloc("\\E1* That..^1. healing..^1. thingy./", "obj_ch2_scene11b_slash_Step_0_gml_384_0");
	c_facenext("ralsei", "2");
	c_msgnextloc("\\E2* Oh^1, healing magic? It's simple^1, Susie. Anyone can do it./", "obj_ch2_scene11b_slash_Step_0_gml_386_0");
	c_msgnextloc("\\EG* ..^1. I could even teach you^1, if you're interested./%", "obj_ch2_scene11b_slash_Step_0_gml_387_0");
	c_talk_wait();
	c_wait(5);
	c_sprite(spr_cutscene_11b_susie_away_a);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Heh^1, ask me again when it's^1, like^1, blood explosion magic./%", "obj_ch2_scene11b_slash_Step_0_gml_395_0");
	c_talk_wait();
	c_wait(5);
	c_sprite(spr_cutscene_11b_susie_away_b);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene11b_slash_Step_0_gml_403_0");
	c_talk_wait();
	c_wait(5);
	c_autowalk(0);
	c_sprite(spr_cutscene_11b_susie_scratch);
	c_imagespeed(0.25);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\EQ* But^1, um^1, if you WANTED^1, I guess I could learn it./", "obj_ch2_scene11b_slash_Step_0_gml_413_0");
	c_msgnextloc("\\EK* Then you wouldn't^1, y'know^1, have to annoy me with it anymore./", "obj_ch2_scene11b_slash_Step_0_gml_414_0");
	c_facenext("ralsei", "G");
	c_msgnextloc("\\EG* Sure^1, Susie. Next time we have a break!/%", "obj_ch2_scene11b_slash_Step_0_gml_416_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("r");
	c_addxy(2, 6);
	c_wait(5);
	c_sel(ra);
	c_walk("d", 4, 4);
	c_sel(su);
	c_walkdirect_wait(299, 202, 15);
	c_sel(ra);
	c_flip("h");
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* (Let's just go already^1, Kris...)/%", "obj_ch2_scene11b_slash_Step_0_gml_434_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(1);
	c_facing("r");
	c_walkdirect(252, 209, 10);
	c_delayfacing(11, "r");
	c_wait(15);
	c_panobj(kr_actor, 10);
	c_wait(10);
	c_sel(kr);
	c_facing("d");
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_mus2("initloop", "alley_ambience.ogg", 0);
	c_terminatekillactors();
}

if (heal == true) {
	heal = false;
	healanim = instance_create(su_actor.x, su_actor.y, obj_healanim);
	healanim.target = su_actor.id;
	snd_play(snd_power);
}

if (con == 4 && !i_ex(obj_cutscene_master)) {
	global.interact = 0;
	global.facing = 0;
	global.plot = 65;
	con = 5;
}

if (con == 5 && obj_mainchara.x >= 1120 && global.plot < 65.5) {
	con = 6;
	alarm[0] = 30;
	global.interact = 1;
	scr_speaker("ralsei");
	msgsetloc(0, "\\E0* By the way Kris^1, I just remembered!/", "obj_ch2_scene11b_slash_Step_0_gml_483_0");
	msgnextloc("\\E0* Although you can only carry 12 ITEMs around.../", "obj_ch2_scene11b_slash_Step_0_gml_484_0");
	msgnextloc("\\E0* Your STORAGE will hold any extra items you pick up./", "obj_ch2_scene11b_slash_Step_0_gml_485_0");
	msgnextloc("\\EG* You can access it where you check Recruits!/", "obj_ch2_scene11b_slash_Step_0_gml_486_0");
	msgnextloc("\\E2* (Enemies you SPARE get RECRUITed to our town, remember?)/", "obj_ch2_scene11b_slash_Step_0_gml_497_0");
	scr_anyface_next("susie", "6");
	msgnextloc("\\E6* Woah^1, that seems like pretty useful information./%", "obj_ch2_scene11b_slash_Step_0_gml_488_0");
	d_make();
}

if (con == 7 && !d_ex()) {
	con = -1;
	global.interact = 0;
	global.plot = 65.5;
}
