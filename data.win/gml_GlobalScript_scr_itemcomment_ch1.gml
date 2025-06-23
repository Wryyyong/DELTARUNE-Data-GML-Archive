function scr_itemcomment_ch1(arg0, arg1) {
	talkx = scr_charbox_x_ch1(arg0);
	itemcomment = instance_create_ch1(talkx + xx, yy + 460, obj_menuwriter_ch1);
	itemcomment.msg = arg1;
	itemcomment.who = arg0;
	
	if (global.flag[32] == 1) {
		with (itemcomment)
			instance_destroy();
	}
}
