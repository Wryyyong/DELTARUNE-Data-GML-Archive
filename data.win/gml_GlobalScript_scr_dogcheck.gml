function scr_dogcheck() {
	if (global.currentroom == 4)
		return 0;
	
	if (global.currentroom >= 233 || global.currentroom <= 11)
		return 1;
	else
		return 0;
}
