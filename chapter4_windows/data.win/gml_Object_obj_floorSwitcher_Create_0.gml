activeFloor = 0;
switchFloors = 1;
floor0 = layer_get_id("TILES_FLOOR_0");
floor1 = layer_get_id("TILES_FLOOR_1");
floor2 = layer_get_id("TILES_FLOOR_2");

if (floor0 != -1)
	floor0depthmem = layer_get_depth(floor0);

if (floor1 != -1)
	floor1depthmem = layer_get_depth(floor1);

if (floor2 != -1)
	floor2depthmem = layer_get_depth(floor2);
