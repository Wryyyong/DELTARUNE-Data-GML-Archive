scr_heal(star, argument0);

with (global.charinstance[star]) {
	ha = instance_create(x, y, obj_healanim);
	ha.target = id;
	dmgwr = scr_dmgwriter_selfchar();
	
	with (dmgwr) {
		delay = 8;
		type = 3;
		damage = argument0;
	}
	
	if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]]) {
		with (dmgwr)
			specialmessage = 3;
	}
	
	tu += 1;
}

global.spelldelay = 15;
