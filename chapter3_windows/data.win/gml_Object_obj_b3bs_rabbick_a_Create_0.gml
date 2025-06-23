encounterno = 125;
encounterflag = 586;
ribbick = 0;
con = 0;
timer = 0;

if (global.flag[encounterflag] != 0)
	con = 99;

knockdoor = 0;

if (global.flag[1170] == 1) {
	knockdoor = instance_create(596, 68, obj_trigger_interact);
	
	with (knockdoor) {
		depth = 999997;
		sprite_index = spr_dw_ch3_b3bs_closeddoor;
		visible = true;
		issolid = true;
		scr_darksize();
	}
	
	scr_marker_ext(knockdoor.x + 38, (knockdoor.y + 56) - 8, 412, 16, 24, undefined, undefined, 8688298, knockdoor.depth - 1);
	
	with (instance_create(600, 160, obj_solidblocksized))
		image_xscale = 2;
	
	with (obj_doorAny) {
		if (doorRoom == 164)
			instance_destroy();
	}
}
