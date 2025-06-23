function scr_dogcheck() {
	if (global.currentroom == 3)
		return 0;
	
	if (global.currentroom >= 232 || global.currentroom <= 10)
		return 1;
	else
		return 0;
}
