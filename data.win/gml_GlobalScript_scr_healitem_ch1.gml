function scr_healitem_ch1(arg0, arg1) {
	scr_heal_ch1(arg0, arg1);
	healx = scr_charbox_x_ch1(arg0);
	healtext = instance_create_ch1(healx + 70 + xx, yy + 430, obj_healwriter_ch1);
	healtext.healamt = arg1;
}
