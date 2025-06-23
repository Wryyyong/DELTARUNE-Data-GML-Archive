with (other.id) {
	if (global.inv < 0) {
		if (grazed == 1) {
			scr_tensionheal(grazepoints / 20);
			
			if (global.turntimer >= 10)
				global.turntimer -= (timepoints / 20);
			
			with (obj_grazebox) {
				if (grazetimer >= 0 && grazetimer < 4)
					grazetimer = 3;
				
				if (grazetimer < 2)
					grazetimer = 2;
			}
		}
		
		if (grazed == 0) {
			grazed = 1;
			scr_tensionheal(grazepoints);
			
			if (global.turntimer >= 10)
				global.turntimer -= timepoints;
			
			with (obj_battlecontroller)
				grazenoise = 1;
			
			with (obj_grazebox)
				grazetimer = 10;
		}
	}
}
