function scr_attackphase() {
	with (obj_battlecontroller) {
		techwon = 0;
		
		if (scr_monsterpop() == 0)
			techwon = 1;
		
		if (techwon == 1)
			scr_wincombat();
		
		if (techwon == 0) {
			for (__hiti = 0; __hiti < 3; __hiti++)
				global.hittarget[__hiti] = 0;
			
			fightphase = 1;
			global.charturn = 3;
			
			if (global.charaction[0] == 4 || global.charaction[0] == 2)
				fightphase = 0;
			
			if (global.charaction[1] == 4 || global.charaction[1] == 2)
				fightphase = 0;
			
			if (global.charaction[2] == 4 || global.charaction[2] == 2)
				fightphase = 0;
			
			if (global.myfight == 4)
				fightphase = 1;
			
			if (i_ex(obj_sound_of_justice_enemy) && obj_sound_of_justice_enemy.phase == 2) {
				if (global.charaction[0] == 1 && global.charaction[1] != 1) {
					if (obj_sound_of_justice_enemy.krisattackcount > 0) {
						global.myfight = -1;
						global.mnfight = 1;
						exit;
					}
				}
				
				if (global.charaction[0] == 1 && global.charaction[1] == 1) {
					if (obj_sound_of_justice_enemy.krisattackcount > 1) {
						global.myfight = -1;
						global.mnfight = 1;
						exit;
					}
					
					global.charaction[1] = 0;
				}
				
				if (global.charaction[0] != 1 && global.charaction[1] == 1) {
					global.myfight = -1;
					global.mnfight = 1;
					exit;
				}
			}
			
			if (fightphase == 1) {
				global.myfight = 1;
				instance_create(xx + 2, yy + 365, obj_attackpress);
			} else {
				global.myfight = 4;
				instance_create(0, 0, obj_spellphase);
			}
		}
	}
}
