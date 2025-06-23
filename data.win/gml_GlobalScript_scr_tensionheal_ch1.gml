function scr_tensionheal_ch1(arg0) {
	global.tension += arg0;
	
	if (global.tension > global.maxtension)
		global.tension = global.maxtension;
}
