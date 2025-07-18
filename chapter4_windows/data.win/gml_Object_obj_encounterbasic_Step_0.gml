if (fightcon == 1) {
	if (global.flag[9] == 1)
		snd_pause(global.currentsong[1]);
	
	counttimer += 1;
	
	if (counttimer < 10) {
		for (i = 0; i < (count + 1); i += 1) {
			with (c[i]) {
				af = scr_afterimage();
				af.image_alpha = 0.5;
			}
		}
	}
	
	if (counttimer >= 10) {
		if (global.encounterno != 84) {
			wp = snd_play(snd_impact);
			snd_volume(wp, 0.7, 0);
			wp2 = snd_play(snd_weaponpull_fast);
			snd_volume(wp2, 0.8, 0);
		}
		
		for (i = 0; i < (count + 1); i += 1) {
			c[i].speed = 0;
			
			if (global.char[i] != 4)
				c[i].image_index = 0;
			
			if (global.char[i] == 1)
				c[i].sprite_index = spr_krisb_attack;
			
			if (global.char[i] == 2) {
				c[i].sprite_index = spr_susieb_attack;
				
				if (global.charweapon[global.char[i]] == 0)
					c[i].sprite_index = spr_susieb_attack_unarmed;
			}
			
			if (global.char[i] == 3)
				c[i].sprite_index = spr_ralsei_battleintro;
			
			c[i].image_speed = 0.5;
		}
		
		if (global.chapter == 4 && room == room_dw_church_jackenstein) {
			c[0].sprite_index = spr_nothing;
			c[1].sprite_index = spr_nothing;
			c[2].sprite_index = spr_nothing;
		}
		
		fightcon = 2;
		counttimer = 0;
	}
}

if (fightcon == 2) {
	counttimer += 1;
	
	for (var _i = 0; _i < (count + 1); _i += 1) {
		with (c[_i]) {
			if ((image_index + image_speed) >= (image_number - 1))
				image_speed = 0;
		}
	}
	
	if (counttimer >= (15 + battlestartdelay)) {
		counttimer = 0;
		fightcon = 3;
		
		for (i = 0; i < (count + 1); i += 1) {
			with (c[i])
				instance_destroy();
		}
		
		instance_create(0, 0, obj_battlecontroller);
		instance_destroy();
		
		if (global.chapter == 4 && room == room_dw_church_jackenstein) {
			obj_herosusie.visible = false;
			obj_heroralsei.visible = false;
		}
	}
}
