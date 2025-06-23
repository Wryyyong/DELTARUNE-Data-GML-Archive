function scr_damage_enemy_ch1(arg0, arg1) {
	dm = instance_create_ch1(global.monsterx[arg0], (global.monstery[arg0] + 20) - (global.hittarget[arg0] * 20), obj_dmgwriter_ch1);
	dm.type = global.char[caster] - 1;
	dm.damage = arg1;
	global.monsterhp[arg0] -= arg1;
	
	if (arg1 > 0) {
		with (global.monsterinstance[arg0]) {
			shakex = 9;
			state = 3;
			hurttimer = 30;
		}
		
		if (instance_exists(global.monsterinstance[arg0]))
			global.monsterinstance[arg0].hurtamt = arg1;
	}
	
	global.hittarget[arg0] += 1;
	
	if (arg1 == 0) {
		with (global.monsterinstance[arg0]) {
			hurtamt = 0;
			
			if (hurttimer <= 15 && candodge == 1) {
				dodgetimer = 0;
				state = 4;
			}
		}
	}
	
	if (global.monsterhp[arg0] <= 0) {
		with (global.monsterinstance[arg0])
			scr_monsterdefeat_ch1();
	}
}
