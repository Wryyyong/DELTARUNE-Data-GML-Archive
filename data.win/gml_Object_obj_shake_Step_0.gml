if (active == 0) {
	camerax = __view_get(0, camera);
	cameray = __view_get(1, camera);
	
	if (global.flag[12] == 0) {
		__view_set(0, camera, camerax + shakex);
		__view_set(1, camera, cameray + shakey);
	}
	
	shakesign = -shakesign;
	active = 1;
	alarm[0] = shakespeed;
}
