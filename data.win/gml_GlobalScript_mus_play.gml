function mus_play(arg0) {
	_xsndinstance = audio_play_sound(arg0, 90, false);
	snd_volume(_xsndinstance, global.flag[16], 0);
	return _xsndinstance;
}
