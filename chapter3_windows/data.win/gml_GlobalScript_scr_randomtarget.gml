function scr_randomtarget() {
	abletotarget = 1;
	
	if (global.charcantarget[0] == 0 && global.charcantarget[1] == 0 && global.charcantarget[2] == 0)
		abletotarget = 0;
	
	mytarget = choose(0, 1, 2);
	
	if (abletotarget == 1) {
		while (global.charcantarget[mytarget] == 0)
			mytarget = choose(0, 1, 2);
	} else {
		mytarget = 3;
	}
	
	global.targeted[mytarget] = 1;
	
	if (global.chapter >= 2 && mytarget != 3) {
		if (global.charcantarget[0])
			global.targeted[0] = 1;
		
		if (global.charcantarget[1])
			global.targeted[1] = 1;
		
		if (global.charcantarget[2])
			global.targeted[2] = 1;
		
		mytarget = 4;
	}
}
