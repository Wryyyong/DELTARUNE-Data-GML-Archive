width = 4;
height = 3;
timer = 0;
init = 0;
drawborders = 0;

if (room != room_dw_teevie_stealth_d && room != room_dw_teevie_shuttahmaze) {
	x = 100;
	y = 100;
} else {
	drawborders = true;
	
	if (room == room_dw_teevie_shuttahmaze)
		depth = 1199900;
	
	if (room == room_dw_teevie_stealth_d) {
		width = 3;
		height = 6;
		depth = 87345;
	}
}

tvbasecolor = 4532059;
tvbasesprite = 4083;
mode = 0;
_screen_list = [];
