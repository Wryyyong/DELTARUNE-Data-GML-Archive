if (damage && global.inv < 0) {
	with (obj_ghosthouse_jackolantern) {
		hits++;
		
		if (hits == 12)
			global.turntimer = 1;
	}
}

event_inherited();
global.inv = min(global.inv, 10);
