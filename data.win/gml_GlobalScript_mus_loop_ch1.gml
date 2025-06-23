function mus_loop_ch1(arg0) {
	_xsndinstance = audio_play_sound(arg0, 90, true);
	snd_volume_ch1(_xsndinstance, 1 * global.flag[16], 0);
	return _xsndinstance;
}
