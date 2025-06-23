if (con == 0) {
	if (!longtelegraph) {
		image_alpha += 0.2;
		
		if (image_alpha == 1)
			con = 1;
	} else {
		image_alpha += 0.08;
		
		if (image_alpha >= 1.1)
			con = 1;
	}
} else {
	if (image_alpha <= -1.3)
		active = 1;
	
	if (!longtelegraph) {
		image_alpha -= 0.2;
		
		if (image_alpha <= -2)
			instance_destroy();
	}
	
	if (longtelegraph) {
		image_alpha -= (1/3);
		
		if (image_alpha <= -2)
			instance_destroy();
	}
}
