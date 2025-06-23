if (global.interact == 0 && con == 0 && buffer <= 0) {
	con = 1;
	global.interact = 1;
	
	with (obj_board_grayregion)
		instance_destroy();
}
