function mus_play_ch1(arg0) {
	_xsndinstance = audio_play_sound(arg0, 90, 0);
	snd_volume_ch1(_xsndinstance, global.flag[16], 0);
	return _xsndinstance;
}
