if (con != 0) {
	for (i = 0; i < 10; i++)
		draw_sprite_ext(sprite_index, image_index, lerp(xprevious, x, i / 10), lerp(con, y, i / 10), image_xscale, image_yscale, image_angle, image_blend, i / 10);
}

draw_self();
