x = 100;
y = 100;
width = 4;
height = 3;
timer = 0;
init = 0;
tvbasecolor = 4532059;
tvbasesprite = 4083;
mode = 0;
frozen_mode = 0;
myimage = choose(0, 2, 4, 8, 19, 23, 31, 35, 37, 39);
door_active = false;
image_xscale = 2;
image_yscale = 2;
tvheight = 40 * image_yscale;
tvwidth = 40 * image_xscale;
readable = -4;
door_block = -4;
treasure_flag = -1;
treasure_sequence = false;
treasure_timer = 0;

set_secret = function(arg0, arg1) {
	treasure_flag = arg0;
	frozen_mode = arg1;
	
	if (scr_flag_get(treasure_flag) == 0) {
		readable = instance_create(x + (3 * tvwidth), y + (1 * tvheight) + 80, obj_readable_room1);
		
		with (readable) {
			extflag = arg0;
			image_xscale = 4;
			image_yscale = 4;
		}
		
		door_block = instance_create(x + (3 * tvwidth), y + (1 * tvheight) + 80, obj_solidblocksized);
		
		with (door_block) {
			image_xscale = 2;
			image_yscale = 2;
		}
	} else {
		show_treasure();
	}
};

set_screen = function(arg0, arg1) {
	var myimage = choose(0, 2, 4, 8, 19, 23, 31, 35, 37, 39);
	screenimage[arg0][arg1] = myimage;
	screenimageoffset[arg0][arg1] = 0;
	
	switch (myimage) {
		case 0:
			screencolor[arg0][arg1] = 16776960;
			break;
		
		case 2:
			screencolor[arg0][arg1] = 65535;
			break;
		
		case 4:
			screencolor[arg0][arg1] = 11785471;
			screencon[arg0][arg1] = 2;
			break;
		
		case 8:
			screencolor[arg0][arg1] = 16776960;
			screencon[arg0][arg1] = 3;
			break;
		
		case 19:
			screencolor[arg0][arg1] = 11785471;
			screencon[arg0][arg1] = 4;
			break;
		
		case 23:
			screencolor[arg0][arg1] = 7389615;
			screencon[arg0][arg1] = 5;
			break;
		
		case 31:
			screencolor[arg0][arg1] = 2984703;
			screencon[arg0][arg1] = 6;
			break;
		
		case 35:
			screencolor[arg0][arg1] = 3439223;
			screencon[arg0][arg1] = 7;
			break;
		
		case 37:
			screencolor[arg0][arg1] = 0;
			screencon[arg0][arg1] = 8;
			break;
		
		case 39:
			screencolor[arg0][arg1] = 12031343;
			screencon[arg0][arg1] = 9;
			break;
		
		default:
			screencolor[arg0][arg1] = 16776960;
			break;
	}
};

set_static = function(arg0, arg1) {
	screentimer[arg0][arg1] = 0;
	screencon[arg0][arg1] = 1;
	screensprite[arg0][arg1] = 3996;
	screenimage[arg0][arg1] = 0;
	screencolor[arg0][arg1] = 16777215;
	screenimageoffset[arg0][arg1] = 0;
};

show_treasure = function() {
	door_active = true;
	alarm[0] = 30;
	
	with (readable)
		instance_destroy();
	
	with (door_block)
		instance_destroy();
	
	if (scr_flag_get(treasure_flag) == 0)
		scr_flag_set(treasure_flag, 1);
};
