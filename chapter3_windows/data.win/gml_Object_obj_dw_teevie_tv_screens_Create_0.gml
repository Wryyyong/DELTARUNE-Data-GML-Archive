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
