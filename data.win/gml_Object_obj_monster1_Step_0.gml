if (global.monster[myself] == 1) {
	if (global.mnfight == 1 && talked == 0) {
		abletotarget = 1;
		
		if (global.charcantarget[0] == 0 && global.charcantarget[1] == 0 && global.charcantarget[2] == 0)
			abletotarget = 0;
		
		mytarget = choose(0, 1, 2);
		
		if (abletotarget == 1) {
			while (global.charcantarget[mytarget] == 0)
				mytarget = choose(0, 1, 2);
		} else {
			target = 3;
		}
		
		global.targeted[mytarget] = 1;
		instance_create(0, 0, obj_darkener);
		global.typer = 7;
		global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_25_0");
		
		if (global.mercymod[myself] >= global.mercymax[myself])
			global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_26_0");
		
		mywriter = instance_create(x - 60, y - 30, obj_writer);
		talked = 1;
		talktimer = 0;
	}
	
	if (talked == 1 && global.mnfight == 1) {
		if (button1_p() && talktimer > 15)
			talktimer = talkmax;
		
		talktimer += 1;
		
		if (talktimer >= talkmax) {
			with (obj_writer)
				instance_destroy();
			
			global.mnfight = 2;
		}
	}
	
	if (global.mnfight == 2 && attacked == 0) {
		simp = instance_create(0, 0, obj_simplecontroller);
		simp.damage = global.monsterat[myself] * 5;
		simp.target = mytarget;
		attacked = 1;
		rr = floor(random(5));
		
		if (rr == 0)
			global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_53_0");
		
		if (rr == 1)
			global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_54_0");
		
		if (rr == 2)
			global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_55_0");
		
		if (rr == 3)
			global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_56_0");
		
		if (rr == 4)
			global.battlemsg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_57_0");
	}
}

if (global.myfight == 3) {
	xx = __view_get(0, 0);
	yy = __view_get(1, 0);
	
	if (acting == 1 && actcon == 0) {
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_75_0");
		global.typer = global.battletyper;
		battlewriter = instance_create(xx + 30, yy + 376, obj_writer);
		
		if (global.fc != 0)
			myface = instance_create(xx + 26, yy + 380, obj_face);
		
		if (acting == 1)
			global.mercymod[myself] += 120;
		
		if (global.mercymod[myself] >= global.mercymax[myself])
			global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_82_0");
	}
	
	if (acting == 2) {
		if (acttimer == 0) {
			global.msg[0] = scr_84_get_lang_string("obj_monster1_slash_Step_0_gml_91_0");
			global.typer = global.battletyper;
			battlewriter = instance_create(xx + 130, yy + 376, obj_writer);
			
			if (global.fc != 0)
				myface = instance_create(xx + 26, yy + 380, obj_face);
		}
		
		if (acttimer == 20) {
			global.chartarget[0] = myself;
			global.chartarget[1] = myself;
			global.charspecial[0] = 1;
			global.charspecial[1] = 1;
			
			with (global.charinstance[0])
				state = 2;
			
			with (global.charinstance[1])
				state = 2;
		}
		
		if (acttimer == 40)
			actcon = 1;
		
		acttimer += 1;
	}
	
	if (actcon == 1 && !instance_exists(obj_writer)) {
		actcon = 0;
		scr_attackphase();
	}
}

if (x > (__view_get(0, 0) + 800) && global.myfight != 3)
	instance_destroy();
