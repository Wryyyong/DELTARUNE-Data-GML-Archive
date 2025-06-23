if (con == 0 && init == 1) {
	x = grabdaddy.x;
	y = grabdaddy.y;
	marker.x = x;
	marker.y = y - 26;
}

if (i_ex(shadowmarker)) {
	if (fakey < -25)
		image_index = 1;
	else
		image_index = 0;
	
	shadowmarker.x = round(x / 2) * 2;
	shadowmarker.y = round(y / 2) * 2;
}
