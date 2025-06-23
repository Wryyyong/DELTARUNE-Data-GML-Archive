if (timer >= lifetime) {
	active = 0;
	image_alpha -= 0.1;
	
	if (image_alpha <= 0)
		instance_destroy();
}

draw_self();
timer++;
