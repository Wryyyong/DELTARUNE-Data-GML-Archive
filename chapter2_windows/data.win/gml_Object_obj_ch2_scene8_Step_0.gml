if (con == 1) {
	global.interact = 1;
	global.facing = 2;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	kr_actor.sprite_index = spr_krisu;
	su = 1;
	su_actor = instance_create(148, 130, obj_actor);
	scr_actor_setup(su, su_actor, "susie");
	su_actor.sprite_index = spr_susie_walk_up_lw;
	c_mus2("volume", 0, 30);
	c_wait(30);
	c_mus("free");
	c_sel(su);
	c_facing("d");
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Alright. We're here./%", "obj_ch2_scene8_slash_Step_0_gml_31_0");
	c_talk_wait();
	c_walk_wait("u", 4, 5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* School. Goddamn. Project./%", "obj_ch2_scene8_slash_Step_0_gml_35_0");
	c_talk_wait();
	c_sel(0);
	c_delayfacing(31, "l");
	c_walkdirect(175, 116, 30);
	c_specialsprite(3);
	c_sel(1);
	c_walk_wait("l", 4, 15);
	c_specialsprite(2);
	c_wait(20);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Books. God. Damn. Crazy about them./%", "obj_ch2_scene8_slash_Step_0_gml_48_0");
	c_talk_wait();
	c_specialsprite(1);
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene8_slash_Step_0_gml_55_0");
	c_talk_wait();
	c_sel(1);
	c_facing("susieunhappy");
	c_specialsprite(0);
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Hey^1, Kris^1, where the hell IS everybody?/%", "obj_ch2_scene8_slash_Step_0_gml_63_0");
	c_talk_wait();
	c_delayfacing(15, "u");
	c_walk_wait("r", 4, 15);
	c_wait(5);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Something seems kinda..^1. off./%", "obj_ch2_scene8_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_facing("r");
	c_wait(60);
	c_msgside("bottom");
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* Screw it let's just go play Space Pinball in the computer lab/%", "obj_ch2_scene8_slash_Step_0_gml_80_0");
	c_talk();
	c_sel(kr);
	c_facing("u");
	c_sel(su);
	c_walk_wait("u", 6, 11);
	c_wait(17);
	c_waittalk();
	c_soundplay(snd_locker);
	c_waitcustom();
	c_wait(30);
	c_autofacing(0);
	c_walk_wait("d", 0.5, 44);
	c_mus2("initloop", "creepydoor.ogg", 0);
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* H..^1. huh...?/", "obj_ch2_scene8_slash_Step_0_gml_97_0");
	c_msgnextloc("* It's like.../%", "obj_ch2_scene8_slash_Step_0_gml_98_0");
	c_talk_wait();
	c_walkdirect(170, 100, 30);
	c_sel(kr);
	c_autofacing(0);
	c_walkdirect(130, 105, 30);
	c_wait(45);
	c_facing("r");
	c_sel(su);
	c_facing("l");
	c_msgsetloc(0, "\\EC* ..^1. the inside of the closet?/%", "obj_ch2_scene8_slash_Step_0_gml_108_0");
	c_talk_wait();
	c_sel(su);
	c_autofacing(1);
	c_facing("u");
	c_sel(kr);
	c_autofacing(1);
	c_facing("u");
	c_wait(10);
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Kris^1, you don't think this could be.../%", "obj_ch2_scene8_slash_Step_0_gml_119_0");
	c_talk_wait();
	c_sel(1);
	c_walkdirect(162, 47, 39);
	c_sel(0);
	c_walkdirect(134, 55, 39);
	c_pannable(1);
	c_panspeed(0, -1, 39);
	c_wait(50);
	c_sel(su);
	c_facing("l");
	c_sel(kr);
	c_facing("r");
	c_msgsetloc(0, "* ... another Dark World?/%", "obj_ch2_scene8_slash_Step_0_gml_134_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_sel(kr);
	c_facing("u");
	c_wait(20);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../", "obj_ch2_scene8_slash_Step_0_gml_142_0");
	c_msgnextloc("\\EA* Well./", "obj_ch2_scene8_slash_Step_0_gml_143_0");
	c_msgnextloc("\\E2* Guess this means we can't start our project./", "obj_ch2_scene8_slash_Step_0_gml_144_0");
	c_msgnextloc("\\EQ* ..^1. unless./", "obj_ch2_scene8_slash_Step_0_gml_145_0");
	c_msgnextloc("\\EA* You know. Kris./", "obj_ch2_scene8_slash_Step_0_gml_146_0");
	c_msgnextloc("\\EQ* If there's a Dark Fountain in there./", "obj_ch2_scene8_slash_Step_0_gml_147_0");
	c_msgnextloc("\\E2* You can seal it.../", "obj_ch2_scene8_slash_Step_0_gml_148_0");
	c_msgnextloc("\\EQ* And it'll turn back into the computer lab^1, right?/%", "obj_ch2_scene8_slash_Step_0_gml_149_0");
	c_talk_wait();
	c_msc(1035);
	c_talk_wait();
	c_sel(kr);
	c_facing("r");
	c_sel(su);
	c_facing("l");
	c_msgsetloc(0, "\\E2* C'mon^1, Kris!!/%", "obj_ch2_scene8_slash_Step_0_gml_157_0");
	c_talk_wait();
	con = 2;
}

if (customcon == 1 && con == 2) {
	drawdoor = 1;
	visible = 1;
	customcon = 2;
	c_waitcustom_end();
}

if (con == 2 && !instance_exists(obj_cutscene_master)) {
	with (obj_actor)
		visible = 0;
	
	scr_losechar();
	scr_getchar(2);
	
	if (global.plot < 20)
		global.plot = 20;
	
	trans = instance_create(0, 0, obj_dw_transition);
	
	with (trans) {
		finaly = 60;
		skiprunback = 1;
		nextroom = 74;
	}
	
	con = 3;
}
