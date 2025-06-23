function scr_tempsave_ch1() {
	filechoicebk2 = global.filechoice;
	global.filechoice = 9;
	scr_saveprocess_ch1(global.filechoice);
	global.filechoice = filechoicebk2;
}
