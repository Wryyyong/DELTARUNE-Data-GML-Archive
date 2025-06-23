function scr_dark_marker_ch1(arg0, arg1, arg2) {
	thismarker = instance_create_ch1(arg0, arg1, obj_marker_ch1);
	
	with (thismarker) {
		sprite_index = arg2;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
	}
	
	return thismarker;
}
