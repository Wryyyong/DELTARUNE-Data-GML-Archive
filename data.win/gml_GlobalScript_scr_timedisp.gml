function scr_timedisp(arg0) {
	var minutes = floor(arg0 / 1800);
	var seconds = round(((arg0 / 1800) - minutes) * 60);
	
	if (seconds == 60)
		seconds = 59;
	
	if (seconds < 10)
		seconds = "0" + string(seconds);
	
	var timedisp = string(minutes) + ":" + string(seconds);
	return timedisp;
}
