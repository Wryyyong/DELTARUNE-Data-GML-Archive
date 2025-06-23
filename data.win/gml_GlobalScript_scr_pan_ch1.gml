function scr_pan_ch1(arg0, arg1, arg2) {
	panner = instance_create_ch1(0, 0, obj_panner_ch1);
	panner.panmax = arg2;
	panner.panx = arg0;
	panner.pany = arg1;
}
