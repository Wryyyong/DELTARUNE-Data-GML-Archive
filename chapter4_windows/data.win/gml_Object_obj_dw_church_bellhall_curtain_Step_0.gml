if (con < 0)
	exit;

if (con == 0) {
	con = 1;
	alarm[0] = 1;
	global.interact = 1;
	global.facing = 0;
}

if (con == 2) {
	con = 10;
	alarm[0] = 30;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(kr);
	c_visible(0);
	c_sel(ra);
	c_visible(0);
	c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30);
	c_sel(su);
	c_setxy(1016, 500);
	c_walkdirect_speed_wait(1016, 173, 4);
	c_wait(30);
	c_msgside("bottom");
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Guys^1, I bet it's in here somewhere!/%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_43_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_facing("d");
	c_wait(15);
	c_autodepth(0);
	c_depth(gerson_marker.depth - 10);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. guys?/%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_56_0");
	c_talk_wait();
	c_wait(30);
	c_facing("susieunhappy");
	c_facing("l");
	c_emote("!", 30);
	c_wait(30);
	c_pannable(1);
	c_pan(80, cameray(), 90);
	c_walkdirect_speed_wait(280, 173, 6);
	c_wait(15);
	c_mus2("initloop", "gerson_defeated.ogg", 0);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Hey^1, old man^1! What are you doing here?/", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_76_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* Just came here for some peace 'n quiet to write my letter./", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_78_0");
	c_facenext("susie", 0);
	c_msgnextloc("\\E0* Your letter.../", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_80_0");
	c_msgnextloc("\\E1* Y'know this is a dream^1, right? Soon^1, it's gonna end.../", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_81_0");
	c_msgnextloc("\\ED* Then everything here..^1. this place..^1. that letter.../", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_82_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* ..^1. you don't say./", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_84_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\EN* Yeah. But..^1. I'll still be here when you wake up./%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_86_0");
	c_talk();
	c_wait_box(4);
	c_sel(su);
	c_facing("u");
	c_wait_box(5);
	c_sel(su);
	c_facing("l");
	c_wait_box(6);
	c_sel(su);
	c_facing("u");
	c_wait_box(8);
	c_var_instance(gerson_marker, "sprite_index", spr_gerson_bench);
	c_var_instance(gerson_marker, "image_speed", 0);
	c_var_instance(gerson_marker, "image_index", 0);
	c_sel(su);
	c_facing("l");
	c_wait_box(9);
	c_sel(su);
	c_sprite(spr_susie_look_down_left_dw);
	c_wait_talk();
	c_var_instance(gerson_marker, "image_index", 1);
	c_wait(30);
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_118_0");
	c_msgnextloc("\\ED* You were..^1. trying to teach me something earlier^1, weren't you./", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_119_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* That? Naw^1, you did all that yourself./", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_121_0");
	c_facenext("susie", "2");
	c_msgnextloc("\\E2* C'mon man^1, you..^1. you're the only person I've met.../", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_123_0");
	c_msgnextloc("\\EK* Who teaching me made me actually feel LESS stupid./", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_124_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* Geheheh^1, well^1, it helps that I'm losing my mind^1, don't it?/", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_126_0");
	c_facenext("susie", "9");
	c_msgnextloc("\\E9* Heheheh.../%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_128_0");
	c_talk();
	c_wait_box(1);
	c_sel(su);
	c_sprite(spr_susie_look_down_left_dw);
	c_wait_box(3);
	c_var_instance(gerson_marker, "image_index", 0);
	c_sel(su);
	c_facing("l");
	c_wait_box(5);
	c_var_instance(gerson_marker, "image_index", 1);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_susie_head_scratch_dw);
	c_imagespeed(0.2);
	c_addxy(0, -6);
	c_wait_box(8);
	c_var_instance(gerson_marker, "image_index", 0);
	c_wait_box(9);
	c_var_instance(gerson_marker, "image_index", 1);
	c_sel(su);
	c_halt();
	c_autowalk(1);
	c_facing("susiedarkeyes");
	c_facing("l");
	c_addxy(0, 6);
	c_wait_talk();
	c_wait(60);
	c_sel(su);
	c_facing("susiedarkeyes");
	c_facing("r");
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* ..^1. So^1, uh^1, seen anything with music notes on it?/", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_171_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* Oh^1, you mean this thing?/%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_173_0");
	c_talk();
	c_wait_box(2);
	c_var_instance(gerson_marker, "image_index", 1);
	c_wait_talk();
	c_var_instance(gerson_marker, "sprite_index", spr_gerson_bench_bell);
	c_var_instance(gerson_marker, "image_index", 0);
	c_wait(6);
	c_var_instance(gerson_marker, "image_index", 1);
	c_var_instance(id, "rope_pull", true);
	c_wait(5);
	c_sel(su);
	c_sprite(spr_susie_sheeh);
	c_emote("!", 30);
	c_wait(30);
	c_walkdirect_speed_wait(350, 173, 6);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E7* Yeah^1, that thing^1! Cool^1, I bet Kris can memorize it^1, and.../%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_201_0");
	c_talk_wait();
	c_var_instance(gerson_marker, "image_index", 0);
	c_wait(6);
	c_var_instance(gerson_marker, "image_index", 1);
	c_var_instance(id, "rope_pull", true);
	c_wait(5);
	c_sel(su);
	c_sprite(spr_susie_shock_r);
	c_shakeobj();
	c_emote("!", 30);
	c_wait(30);
	c_var_instance(gerson_marker, "sprite_index", spr_gerson_bench);
	c_var_instance(gerson_marker, "image_index", 0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EF* .../", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_221_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* Here. Pen 'n paper./%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_223_0");
	c_talk();
	c_wait_box(2);
	c_var_instance(gerson_marker, "sprite_index", spr_gerson_bench_paper);
	c_sel(su);
	c_facing("susieunhappy");
	c_facing("l");
	c_wait_talk();
	c_walkdirect_speed_wait(263, 173, 6);
	c_wait(5);
	c_sound_play(201);
	c_var_instance(gerson_marker, "sprite_index", spr_gerson_bench);
	c_sel(su);
	c_sprite(spr_susie_walk_down_paper);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Wait^1, you want ME to copy ALL that...?/", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_244_0");
	c_msgnextloc("\\EC* ..^1. plus^1, if I got your pen^1, how'll you do your letter?/", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_245_0");
	c_facenext("gerson", 0);
	c_msgnextloc("* The important part's already done./", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_247_0");
	c_msgnextloc("* 'sides^1, what good's a teacher that doesn't give homework?/", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_248_0");
	c_facenext("susie", "9");
	c_msgnextloc("\\E9* Heh^1, screw you./%", "obj_dw_church_bellhall_curtain_slash_Step_0_gml_250_0");
	c_talk();
	c_wait_box(1);
	c_autowalk(0);
	c_sprite(spr_susie_walk_down_paper_look_left);
	c_imageindex(1);
	c_wait_box(4);
	c_var_instance(gerson_marker, "image_index", 1);
	c_wait_box(6);
	c_sel(su);
	c_autowalk(0);
	c_sprite(spr_susie_walk_down_paper_look_left);
	c_imageindex(2);
	c_wait_talk();
	c_mus2("volume", 0, 30);
	c_wait(30);
	c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60);
	c_wait(90);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}

if (con == 11 && !i_ex(obj_cutscene_master)) {
	con = 99;
	snd_free_all();
	scr_flag_set(844, 1);
	room_goto(room_dw_church_bellhall_bookroom);
}

if (rope_pull) {
	rope_pull = false;
	
	with (obj_dw_church_bellhall_curtain_vfx)
		rope_pull = true;
}
