function scr_anim_ch1(arg0, arg1) {
	objanim = instance_create_ch1(x, y, obj_anim_ch1);
	objanim.target = id;
	objanim.sprite_index = arg0;
	objanim.framespeed = arg1;
	
	with (objanim)
		event_user(0);
}
