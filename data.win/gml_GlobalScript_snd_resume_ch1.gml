function snd_resume_ch1(arg0) {
	if (global.is_console)
		snd_volume(arg0, 1, 0);
	
	audio_resume_sound(arg0);
}
