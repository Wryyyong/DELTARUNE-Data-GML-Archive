draw_sprite_ext(spr_susiezilla_background, 0, xorig - bgxoffset, 0, 2, 2, 0, image_blend, image_alpha);
ossafe_fill_rectangle_color(xorig - 1, -24, xorig - 24, cameraheight() + 24, 0, 0, 0, 0, false);
ossafe_fill_rectangle_color(xorig + width, -24, xorig + width + 24, cameraheight() + 24, 0, 0, 0, 0, false);
draw_set_color(c_blue);

if (gameover) {
	fadeout = scr_approach(fadeout, 1, 0.02);
	draw_set_alpha(fadeout);
	
	if (fadeout == 0.98)
		mus_fade(global.currentsong[1], 120);
	
	ossafe_fill_rectangle_color(camerax(), cameray(), camerax() + camerawidth(), cameray() + cameraheight(), 16777215, 16777215, 16777215, 16777215, false);
	draw_set_alpha(1);
}
