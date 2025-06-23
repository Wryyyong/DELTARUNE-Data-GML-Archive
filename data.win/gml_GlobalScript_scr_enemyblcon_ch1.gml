function scr_enemyblcon_ch1(arg0, arg1, arg2) {
	if (arg2 == 0) {
		mywriter = instance_create_ch1(arg0, arg1, obj_writer_ch1);
		return mywriter;
	}
	
	if (arg2 == 1) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		return myblcon;
	}
	
	if (arg2 == 2) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_v_ch1;
		return myblcon;
	}
	
	if (arg2 == 3) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_long_ch1;
		return myblcon;
	}
	
	if (arg2 == 4) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_clubs_ch1;
		myblcon.image_index = 0;
		myblcon.image_speed = 0;
		return myblcon;
	}
	
	if (arg2 == 5) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_clubs_ch1;
		myblcon.image_index = 1;
		myblcon.image_speed = 0;
		return myblcon;
	}
	
	if (arg2 == 6) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_clubs_ch1;
		myblcon.image_index = 2;
		myblcon.image_speed = 0;
		return myblcon;
	}
	
	if (arg2 == 7) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_long_r_ch1;
		myblcon.image_index = 2;
		myblcon.image_speed = 0;
		return myblcon;
	}
	
	if (arg2 == 8) {
		myblcon = instance_create_ch1(arg0, arg1, obj_battleblcon_ch1);
		myblcon.sprite_index = spr_battleblcon_long_tall_ch1;
		return myblcon;
	}
}
