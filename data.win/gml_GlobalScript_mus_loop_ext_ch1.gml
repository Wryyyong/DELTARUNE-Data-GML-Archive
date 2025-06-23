function mus_loop_ext_ch1(arg0, arg1, arg2) {
	snd_volume_ch1(arg0, arg1 * global.flag[16], 0);
	snd_pitch_ch1(arg0, arg2);
	return mus_loop_ch1(arg0);
}
