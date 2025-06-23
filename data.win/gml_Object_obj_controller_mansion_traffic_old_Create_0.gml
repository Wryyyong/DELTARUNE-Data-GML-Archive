carGen = 0;
victory = 0;
con = 0;
timer = 0;

if (global.flag[370] == 1) {
	with (obj_traffic_car_generator)
		instance_destroy();
	
	with (obj_mouseTrigger)
		instance_destroy();
	
	instance_destroy();
}
