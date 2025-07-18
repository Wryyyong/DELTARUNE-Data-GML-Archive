if (stonelancer != -1) {
	with (stonelancer)
		scr_depth();
}

if (obj_mainchara.x > x && con == -1) {
	con = 1;
	global.interact = 1;
	global.facing = 1;
	scr_losechar();
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(1750, 240, 2, 0);
	scr_makecaterpillar(1750, 240, 3, 1);
	
	with (obj_caterpillarchara)
		visible = 0;
	
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(kr);
	c_facing("r");
	c_sel(su);
	c_setxy(susienpc.x, susienpc.y);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_autowalk(0);
	c_halt();
	c_sel(ra);
	c_sprite(spr_cutscene_20_ralsei_walk_right_butler);
	c_autowalk(0);
	c_halt();
	be = 3;
	be_actor = instance_create(340, 180, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_down_dw;
	fan_a = 4;
	fan_a_actor = instance_create(1788, 188, obj_actor);
	scr_actor_setup(fan_a, fan_a_actor, "fan_a");
	fan_a_actor.sprite_index = spr_npc_butler;
	c_sel(fan_a);
	c_halt();
	fan_b = 5;
	fan_b_actor = instance_create(1880, 188, obj_actor);
	scr_actor_setup(fan_b, fan_b_actor, "fan_b");
	fan_b_actor.sprite_index = spr_npc_butler;
	c_sel(fan_b);
	c_halt();
	fan_c = 6;
	fan_c_actor = instance_create(1733, 150, obj_actor);
	scr_actor_setup(fan_c, fan_c_actor, "fan_c");
	fan_c_actor.sprite_index = spr_npc_butler;
	c_sel(fan_c);
	c_halt();
	fan_d = 7;
	fan_d_actor = instance_create(1812, 150, obj_actor);
	scr_actor_setup(fan_d, fan_d_actor, "fan_c");
	fan_d_actor.sprite_index = spr_npc_butler;
	c_sel(fan_d);
	c_halt();
	fan_e = 8;
	fan_e_actor = instance_create(1890, 150, obj_actor);
	scr_actor_setup(fan_e, fan_e_actor, "fan_c");
	fan_e_actor.sprite_index = spr_npc_butler;
	c_sel(fan_e);
	c_halt();
	la = 9;
	la_actor = instance_create(1605, 255, obj_actor);
	scr_actor_setup(la, la_actor, "lancer");
	la_actor.sprite_index = spr_cutscene_20_lancer_desaturated;
	c_sel(la);
	c_autodepth(0);
	c_depth(98000);
	c_visible(0);
	stonelancer = scr_dark_marker(1606, 236, spr_cutscene_20_lancer_stone);
	stonelancer.depth = 97000;
	stonelancer.image_alpha = 0;
}

if (con == 1 || scr_cutscene_loaded()) {
	con = 2;
	alarm[0] = 30;
	c_msgside("top");
	c_soundplay(snd_ralsei_yell);
	c_sel(su);
	c_emote("!", 30);
	c_var_instance(susienpc, "visible", 0);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* Th..^1. that screaming..^1. Ralsei...!?/%", "obj_ch2_scene20_slash_Step_0_gml_112_0");
	c_talk_wait();
	c_sel(kr);
	c_walkdirect(1440, 247, 35);
	c_sel(su);
	c_sprite(spr_cutscene_18_susie_lancer_carry_walk_right);
	c_imagespeed(0.25);
	c_walkdirect(1490, 221, 35);
	c_mus2("volume", 0, 30);
	c_pannable(1);
	c_panspeed(18, 0, 30);
	c_wait(31);
	c_halt();
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EQ* U-umm^1, you don't have to scream.../", "obj_ch2_scene20_slash_Step_0_gml_130_0");
	c_msgnextloc("\\E1* ..^1. Just because you like my outfit!/%", "obj_ch2_scene20_slash_Step_0_gml_131_0");
	c_talk_wait();
	c_soundplay(snd_ralsei_yell_fanclub);
	n = 18;
	c_sel(ra);
	c_autodepth(0);
	c_depth(5000);
	c_sel(fan_a);
	c_sprite(spr_swatchling_hurt);
	c_addxy(0, n);
	c_shakeobj();
	c_sel(fan_b);
	c_sprite(spr_swatchling_hurt);
	c_addxy(0, n);
	c_shakeobj();
	c_sel(fan_c);
	c_sprite(spr_swatchling_hurt);
	c_addxy(0, n);
	c_shakeobj();
	c_sel(fan_d);
	c_sprite(spr_swatchling_hurt);
	c_addxy(0, n);
	c_shakeobj();
	c_sel(fan_e);
	c_sprite(spr_swatchling_hurt);
	c_addxy(0, n);
	c_shakeobj();
	c_wait(30);
	c_panspeed(-4, 0, 20);
	c_sel(fan_a);
	c_flip("x");
	c_sprite(spr_npc_butler);
	c_addxy(0, -n);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk("r", 8, 60);
	c_sel(fan_b);
	c_flip("x");
	c_sprite(spr_npc_butler);
	c_addxy(0, -n);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk("r", 8, 60);
	c_sel(fan_c);
	c_flip("x");
	c_sprite(spr_npc_butler);
	c_addxy(0, -n);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk("r", 8, 60);
	c_sel(fan_d);
	c_flip("x");
	c_sprite(spr_npc_butler);
	c_addxy(0, -n);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk("r", 8, 60);
	c_sel(fan_e);
	c_flip("x");
	c_sprite(spr_npc_butler);
	c_addxy(0, -n);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walk("r", 8, 60);
	c_wait(15);
	c_sel(ra);
	c_autodepth(1);
	c_sprite(spr_cutscene_20_ralsei_walk_left_butler);
	c_imagespeed(0.25);
	c_walk_wait("l", 8, 5);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EH* O-oh!^1! Kris^1, Susie!^1! Umm^1, how may I serve you...?/", "obj_ch2_scene20_slash_Step_0_gml_204_0");
	c_facenext("susie", "5");
	c_msgnextloc("\\E5* The hell are you doing!?/", "obj_ch2_scene20_slash_Step_0_gml_206_0");
	c_facenext("ralsei", "2");
	c_msgnextloc("\\E2* Umm^1, Queen didn't have a room for me^1, so..^1. err.../%", "obj_ch2_scene20_slash_Step_0_gml_208_0");
	c_talk_wait();
	c_sprite(spr_cutscene_20_ralsei_walk_down_butler);
	c_imagespeed(0);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E1* She made me into one of her butlers^1, instead.../%", "obj_ch2_scene20_slash_Step_0_gml_215_0");
	c_talk_wait();
	c_sel(su);
	c_imagespeed(0.25);
	c_walk_wait("r", 12, 8);
	c_sprite(spr_cutscene_20_susie_lancer_carry_show);
	c_imagespeed(0.25);
	c_wait(15);
	c_imagespeed(0);
	c_imageindex(3);
	c_sel(ra);
	c_sprite(spr_cutscene_20_ralsei_walk_left_butler_unhappy);
	c_imagespeed(0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EZ* Whatever!^1! Ralsei^1! Can you heal Lancer!?/", "obj_ch2_scene20_slash_Step_0_gml_234_0");
	c_facenext("ralsei", "C");
	c_msgnextloc("\\EC* O-oh!/", "obj_ch2_scene20_slash_Step_0_gml_236_0");
	c_facenext("lancer", "A");
	c_msgnextloc("\\EA* Haha..^1. it's..^1. cold.../%", "obj_ch2_scene20_slash_Step_0_gml_238_0");
	c_talk_wait();
	c_imagespeed(0.25);
	c_walk("l", 3, 9);
	c_wait(60);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E4* ..^1. Susie.../%", "obj_ch2_scene20_slash_Step_0_gml_248_0");
	c_talk_wait();
	c_sprite(spr_cutscene_20_ralsei_walk_up_butler);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E6* .../%", "obj_ch2_scene20_slash_Step_0_gml_255_0");
	c_talk_wait();
	c_sprite(spr_cutscene_20_ralsei_walk_left_butler_unhappy);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E8* I'm afraid..^1. This is something I can't heal./", "obj_ch2_scene20_slash_Step_0_gml_262_0");
	c_facenext("susie", "Z");
	c_msgnextloc("\\EZ* Wh-what?/", "obj_ch2_scene20_slash_Step_0_gml_264_0");
	c_facenext("ralsei", 4);
	c_msgnextloc("\\E4* Lancer is.../%", "obj_ch2_scene20_slash_Step_0_gml_266_0");
	c_talk_wait();
	c_sel(ra);
	c_autowalk(0);
	c_walk("r", 4, 5);
	c_imagespeed(0.25);
	c_delaycmd(9, "imagespeed", 0);
	c_sel(la);
	c_visible(1);
	c_sel(la);
	c_autowalk(0);
	c_setxy(1606, 236);
	c_sel(su);
	c_specialsprite(4);
	c_imagespeed(0);
	c_autowalk(0);
	c_walk("l", 5, 8);
	c_delaycmd(9, "imagespeed", 0);
	c_sel(la);
	c_sprite(spr_cutscene_20_lancer_desaturated);
	c_var_lerp_instance(stonelancer, "image_alpha", 0, 1, 15);
	c_wait(10);
	c_soundplay(snd_petrify);
	c_wait(10);
	c_sel(su);
	c_specialsprite(4);
	c_sel(la);
	c_visible(0);
	c_wait(60);
	c_sel(su);
	c_facing("susieunhappy");
	c_autowalk(1);
	c_autodepth(0);
	c_depth(95000);
	c_walkdirect_wait(1572, 216, 6);
	c_sprite(spr_cutscene_20_susie_lancer_shake);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_sel(la);
	c_visible(0);
	c_var_instance(stonelancer, "visible", 0);
	c_speaker("susie");
	c_msgsetloc(0, "\\EZ* Lancer!? Lancer^1, hey...!!/%", "obj_ch2_scene20_slash_Step_0_gml_328_0");
	c_talk_wait();
	c_sel(ra);
	c_sprite(spr_cutscene_20_ralsei_walk_right_butler_unhappy);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E4* You see^1, each Dark Fountain creates a different \"world.\"/", "obj_ch2_scene20_slash_Step_0_gml_336_0");
	c_msgnextloc("\\E4* A \"world\" whose Darkners reflect the will of its fountain./", "obj_ch2_scene20_slash_Step_0_gml_337_0");
	
	if (global.lang == "ja")
		c_msgnextloc("\\E4＊ その世界を生み出した&　 「闇の泉」の意志を&　 受け継いだ者たちなんだよ。/", "obj_ch2_scene20_slash_Step_0_gml_375_0_b");
	
	c_msgnextloc("\\E4* But^1, though those Darkners can exist in their own worlds.../", "obj_ch2_scene20_slash_Step_0_gml_338_0");
	c_msgnextloc("\\E4* They might not \"belong\" if they go to another one./%", "obj_ch2_scene20_slash_Step_0_gml_339_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_20_susie_lancer_look_down);
	c_speaker("susie");
	c_msgsetloc(0, "\\EC* ..^1. so can we help him!?/%", "obj_ch2_scene20_slash_Step_0_gml_346_0");
	c_talk_wait();
	c_sel(ra);
	c_sprite(spr_cutscene_20_ralsei_walk_left_butler_unhappy);
	c_speaker("ralsei");
	c_msgsetloc(0, "\\EA* Yes. There is a way./", "obj_ch2_scene20_slash_Step_0_gml_354_0");
	c_msgnextloc("* Castle Town's Grand Fountain is made of pure darkness./", "obj_ch2_scene20_slash_Step_0_gml_355_0");
	c_msgnextloc("\\EB* As long as it stays flowing^1, any Darkner can live there./", "obj_ch2_scene20_slash_Step_0_gml_356_0");
	c_msgnextloc("\\E2* So..^1. if we bring Lancer back to school^1, he'll be OK again./%", "obj_ch2_scene20_slash_Step_0_gml_357_0");
	c_talk_wait();
	c_speaker("susie");
	c_msgsetloc(0, "* ..^1. So we just need to get out of here^1, huh?/%", "obj_ch2_scene20_slash_Step_0_gml_365_0");
	c_talk_wait();
	c_speaker("ralsei");
	c_msgsetloc(0, "\\E2* Right./", "obj_ch2_scene20_slash_Step_0_gml_372_0");
	c_facenext("susie", "C");
	c_msgnextloc("\\EC* ..^1. alright./%", "obj_ch2_scene20_slash_Step_0_gml_374_0");
	c_talk_wait();
	c_sel(su);
	c_sprite(spr_cutscene_20_susie_lancer_smile);
	c_speaker("susie");
	c_msgsetloc(0, "\\EA* Lancer^1, we'll be back for you^1, buddy.../%", "obj_ch2_scene20_slash_Step_0_gml_378_0");
	c_talk_wait();
	c_wait(30);
	c_sel(su);
	c_facing("l");
	c_emote("!", 30);
	c_autowalk(1);
	c_var_instance(stonelancer, "visible", 1);
	c_sel(ra);
	c_emote("!", 30);
	c_speaker("berdly");
	c_fefc(0, 0);
	c_msgsetloc(0, "\\EI* Your friend..^1. If we defeat Queen^1, we can save him?/%", "obj_ch2_scene20_slash_Step_0_gml_394_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("l");
	c_sel(su);
	c_facing("l");
	c_sel(be);
	c_facing("berdlyunhappy");
	c_setxy(1250, 230);
	c_walkdirect(1298, 230, 15);
	c_panspeed(-8, 0, 10);
	c_wait(30);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Uh^1, yeah./%", "obj_ch2_scene20_slash_Step_0_gml_414_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "* With me out of the way^1, Queen.../%", "obj_ch2_scene20_slash_Step_0_gml_421_0");
	c_talk_wait();
	c_sel(be);
	c_sprite(spr_berdly_depressed_dw_left);
	c_halt();
	c_speaker("berdly");
	c_msgsetloc(0, "\\EG* ..^1. is going to force Noelle to do her bidding./", "obj_ch2_scene20_slash_Step_0_gml_431_0");
	c_msgnextloc("\\E9* And if Noelle doesn't want to.../", "obj_ch2_scene20_slash_Step_0_gml_432_0");
	c_msgnextloc("\\E8* ..^1. She might make her face into a robot one./", "obj_ch2_scene20_slash_Step_0_gml_433_0");
	c_facenext("susie", "0");
	c_msgnextloc("\\E0* .../%", "obj_ch2_scene20_slash_Step_0_gml_435_0");
	c_talk_wait();
	c_facing("berdlyunhappy");
	c_walkdirect(1505, 230, 40);
	c_panspeed(4, 0, 15);
	c_wait(20);
	c_sel(kr);
	c_facing("r");
	c_wait(20);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E8* Susie.../%", "obj_ch2_scene20_slash_Step_0_gml_451_0");
	c_talk_wait();
	c_sel(su);
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E9* Could you..^1. assist me in saving Noelle?/", "obj_ch2_scene20_slash_Step_0_gml_458_0");
	c_facenext("susie", "6");
	c_msgnextloc("\\E6* ..^1. huh...? M-me?/%", "obj_ch2_scene20_slash_Step_0_gml_460_0");
	c_talk_wait();
	c_facing("l");
	c_sel(be);
	c_sprite(spr_berdly_depressed_dw_left);
	c_halt();
	c_speaker("berdly");
	c_msgsetloc(0, "\\E9* I..^1. just can't do it by myself./%", "obj_ch2_scene20_slash_Step_0_gml_472_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_berdly_smug_point_animated);
	c_imagespeed(0.25);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EI* But if you can help me..^1. I have a plan./", "obj_ch2_scene20_slash_Step_0_gml_482_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* A plan?/%", "obj_ch2_scene20_slash_Step_0_gml_484_0");
	c_talk_wait();
	c_sel(be);
	c_facing("berdly");
	c_autowalk(1);
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E0* I remember from Queen's tour of this place.../", "obj_ch2_scene20_slash_Step_0_gml_493_0");
	c_msgnextloc("\\E0* There's a secret shortcut on the third floor./%", "obj_ch2_scene20_slash_Step_0_gml_494_0");
	c_talk_wait();
	c_facing("l");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E1* While Kris is distracting Queen^1,/", "obj_ch2_scene20_slash_Step_0_gml_500_0");
	c_msgnextloc("\\E0* Susie will take the shortcut to reach Noelle^1,/%", "obj_ch2_scene20_slash_Step_0_gml_501_0");
	c_talk_wait();
	c_facing("d");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E0* And transfer her to me on the roof./", "obj_ch2_scene20_slash_Step_0_gml_507_0");
	c_msgnextloc("\\E1* From there^1, I'll bring her to a safe hiding spot.../%", "obj_ch2_scene20_slash_Step_0_gml_508_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_berdly_smug_point_animated);
	c_imagespeed(0.25);
	c_speaker("berdly");
	c_msgsetloc(0, "\\EI* And together^1, we can all defeat Queen!/%", "obj_ch2_scene20_slash_Step_0_gml_516_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* .../%", "obj_ch2_scene20_slash_Step_0_gml_523_0");
	c_talk_wait();
	c_facing("l");
	c_sel(be);
	c_facing("r");
	c_halt();
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* Alright^1, sure. We'll give it a shot./", "obj_ch2_scene20_slash_Step_0_gml_534_0");
	c_facenext("berdly", "6");
	c_msgnextloc("\\E6* Haha^1! Most excellent!^1! Then.../%", "obj_ch2_scene20_slash_Step_0_gml_536_0");
	c_talk_wait();
	c_sel(su);
	c_autodepth(1);
	c_sel(be);
	c_autowalk(1);
	c_walk_wait("d", 6, 5);
	c_walk("r", 12, 25);
	c_delayfacing(46, "l");
	c_wait(15);
	c_sel(kr);
	c_facing("r");
	c_sel(ra);
	c_sprite(spr_cutscene_20_ralsei_walk_right_butler);
	c_sel(su);
	c_facing("r");
	c_wait(30);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* See you on the roof^1, fellow agent!/%", "obj_ch2_scene20_slash_Step_0_gml_563_0");
	c_talk_wait();
	c_sel(be);
	c_walk("r", 10, 30);
	c_panobj(kr_actor, 30);
	c_wait(15);
	c_sel(su);
	c_facing("l");
	c_sel(ra);
	c_sprite(spr_cutscene_20_ralsei_walk_left_butler);
	c_wait(15);
	c_speaker("susie");
	c_msgsetloc(0, "\\E2* Alright^1, let's go!/%", "obj_ch2_scene20_slash_Step_0_gml_583_0");
	c_talk_wait();
	c_sel(su);
	c_walkdirect(1360, 230, 25);
	c_delayfacing(26, "r");
	c_sel(ra);
	c_autowalk(0);
	c_walkdirect(1290, 242, 25);
	c_imagespeed(0.25);
	c_delaycmd(26, "imagespeed", 0);
	c_delaycmd(26, "sprite", spr_cutscene_20_ralsei_walk_right_butler);
	c_wait(60);
	c_sel(su);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E5* ..^1. would you take that off already!?/", "obj_ch2_scene20_slash_Step_0_gml_607_0");
	c_facenext("ralsei", "Q");
	c_msgnextloc("\\EQ* S-sorry!/%", "obj_ch2_scene20_slash_Step_0_gml_609_0");
	c_talk_wait();
	c_wait(16);
	c_soundplay(snd_swing);
	c_sel(kr);
	c_spin(2);
	c_sel(su);
	c_spin(2);
	c_sel(ra);
	c_addxy(0, -5);
	c_spin(2);
	c_wait(16);
	c_soundplay(snd_bell);
	c_sel(kr);
	c_sprite(spr_kris_pose);
	c_addxy(-2, -2);
	c_spin(0);
	c_sel(su);
	c_sprite(spr_susie_pose);
	c_addxy(2, 2);
	c_spin(0);
	c_sel(ra);
	c_sprite(spr_ralsei_pose);
	c_addxy(-10, 0);
	c_spin(0);
	c_mus2("volume", 1, 15);
	c_wait(15);
}

if (con == 3 && !d_ex()) {
	con = 4;
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}

if (con == 4 && !i_ex(obj_cutscene_master)) {
	con = 0;
	global.interact = 0;
	global.facing = 0;
	global.plot = 120;
	lancernpc = instance_create(stonelancer.x, stonelancer.y, obj_pushable_lancer);
	
	with (stonelancer)
		instance_destroy();
	
	instance_destroy();
}
