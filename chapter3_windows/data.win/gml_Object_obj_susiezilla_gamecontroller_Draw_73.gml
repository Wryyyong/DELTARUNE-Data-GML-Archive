if (fadeout == 1) {
	fadeout2 = scr_approach(fadeout2, 1, 0.01);
	draw_set_alpha(fadeout2);
	ossafe_fill_rectangle_color(camerax(), cameray(), camerax() + camerawidth(), cameray() + cameraheight(), 16777215, 16777215, 16777215, 16777215, false);
	draw_set_alpha(1);
}
