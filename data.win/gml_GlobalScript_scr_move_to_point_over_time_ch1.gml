function scr_move_to_point_over_time_ch1(arg0, arg1, arg2) {
	_mmm = instance_create_ch1(x, y, obj_move_to_point_ch1);
	_mmm.target = id;
	_mmm.movex = arg0;
	_mmm.movey = arg1;
	_mmm.movemax = arg2;
}
