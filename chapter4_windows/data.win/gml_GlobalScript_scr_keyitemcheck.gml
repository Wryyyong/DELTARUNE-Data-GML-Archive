function scr_keyitemcheck(arg0) {
	haveit = 0;
	itemcount = 0;
	
	for (i = 0; i < 12; i += 1) {
		if (global.keyitem[i] == arg0)
			haveit = 1;
		
		if (global.keyitem[i] == arg0)
			itemcount += 1;
	}
	
	return haveit;
}
