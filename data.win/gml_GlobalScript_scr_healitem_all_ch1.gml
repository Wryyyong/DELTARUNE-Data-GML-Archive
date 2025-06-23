function scr_healitem_all_ch1(arg0) {
	scr_healall_ch1(arg0);
	
	for (i = 0; i < chartotal; i += 1) {
		healx = scr_charbox_x_ch1(i);
		healtext = instance_create_ch1(healx + 70 + xx, yy + 430, obj_healwriter_ch1);
		healtext.healamt = arg0;
	}
}
