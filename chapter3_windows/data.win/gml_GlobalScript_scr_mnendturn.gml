function scr_mnendturn() {
	if (global.char[0] == 2)
		sus = 0;
	
	if (global.char[1] == 2)
		sus = 1;
	
	if (global.char[2] == 2)
		sus = 2;
	
	techwon = 0;
	
	if (scr_monsterpop() == 0)
		techwon = 1;
	
	if (global.flag[39] == 1)
		techwon = 1;
	
	if (techwon == 1)
		scr_wincombat();
	
	if (techwon == 0) {
		with (obj_battlecontroller) {
			messagepriority = -1;
			attackpriority = -1;
		}
		
		scr_battlecursor_memory_reset();
		
		if (global.chapter == 3 && i_ex(obj_rouxls_ch3_enemy)) {
			global.bmenucoord[0][0] = 2;
			global.bmenucoord[0][1] = 2;
			global.bmenucoord[0][2] = 2;
			
			if (obj_battlecontroller.rouxlsgridenabled == true)
				obj_battlecontroller.rouxlsbuttoncount_y = 4;
		}
		
		if (global.chapter == 3) {
			with (obj_gameshow_battlemanager)
				turns++;
		}
		
		global.mnfight = 0;
		global.myfight = 0;
		global.bmenuno = 0;
		global.charturn = 0;
		skip = 0;
		
		for (i = 0; i < 3; i += 1) {
			global.hittarget[i] = 0;
			
			with (global.charinstance[i])
				tu = 0;
			
			hptarget = global.char[i];
			
			if (global.char[i] != 0 && global.hp[hptarget] <= 0) {
				if (global.chapter == 3 && i_ex(obj_knight_enemy)) {
				} else {
					healamt = ceil(global.maxhp[hptarget] / 8);
					dmgwr = instance_create(global.charinstance[i].x, (global.charinstance[i].y + global.charinstance[i].myheight) - 24, obj_dmgwriter);
					
					with (dmgwr) {
						delay = 1;
						type = 3;
					}
					
					dmgwr.damage = scr_heal(i, healamt);
					
					if (global.hp[hptarget] >= 1) {
						with (dmgwr)
							specialmessage = 4;
					}
				}
			}
		}
		
		if (global.charmove[0] == 0 || global.charauto[global.char[0]] == 1)
			global.charturn = 1;
		
		if (global.charturn == 1) {
			if (global.charmove[1] == 0 || global.charauto[global.char[1]] == 1)
				global.charturn = 2;
		}
		
		if (global.charturn == 2) {
			if (global.charmove[2] == 0 || global.charauto[global.char[2]] == 1)
				skip = 1;
		}
		
		for (i = 0; i < 3; i += 1) {
			global.acting[i] = 0;
			global.actingsingle[i] = 0;
			global.actingsimul[i] = 0;
			global.actingtarget[i] = 0;
			global.temptension[i] = global.tension;
			global.charspecial[i] = 0;
			global.targeted[i] = 0;
			global.charaction[i] = 0;
			global.faceaction[i] = 0;
			global.monsterattackname[i] = " ";
		}
		
		global.currentactingchar = 0;
		
		with (obj_monsterparent) {
			attacked = 0;
			talked = 0;
			acting = 0;
			actingsus = 0;
			actingral = 0;
			actingnoe = 0;
		}
		
		if (skip == 1) {
			if (global.char[0] == 2 && global.charauto[2] == 1) {
				global.acting[0] = 1;
				global.myfight = 3;
			}
			
			scr_endturn();
		}
		
		for (i = 0; i < 12; i += 1) {
			for (j = 0; j < 3; j += 1)
				tempitem[i][j] = global.item[i];
		}
	}
}
