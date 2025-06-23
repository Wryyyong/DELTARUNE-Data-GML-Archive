if (darken == 1) {
	with (obj_heroparent)
		darkify = 1;
	
	if (darkamt < 15)
		darkamt += 1;
	
	with (obj_whiteedge)
		image_alpha = obj_darkener.darkamt / 15;
}

if (darken == 0) {
	with (obj_growtangle)
		growcon = 3;
	
	with (obj_heroparent)
		darkify = 0;
	
	if (darkamt > 0)
		darkamt -= 1;
	
	with (obj_whiteedge)
		image_alpha = obj_darkener.darkamt / 15;
	
	if (darkamt <= 0)
		instance_destroy();
}

draw_set_alpha(darkamt / 20);
draw_set_color(c_black);
draw_rectangle(__view_get(0, 0) - 40, __view_get(1, 0) - 40, __view_get(0, 0) + 680, __view_get(1, 0) + 520, false);
draw_set_alpha(1);
