if (test == 0) {
}

if (test == 1) {
}

if (test == 2) {
}

if (test == 3) {
}

if (show_outline == true) {
	if (hurttimer > 0 && (hurttimer % 2) == 0)
		d3d_set_fog(true, c_white, 0, 1);
	else
		d3d_set_fog(true, c_black, 0, 1);
	
	draw_sprite_ext(sprite_index, image_index, (round(x / 2) * 2) - 2 - 0, (round(y / 2) * 2) - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, ((round(x / 2) * 2) + 2) - 0, (round(y / 2) * 2) - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, (round(x / 2) * 2) - 0, (round(y / 2) * 2) - 2 - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(sprite_index, image_index, (round(x / 2) * 2) - 0, ((round(y / 2) * 2) + 2) - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	d3d_set_fog(false, c_black, 0, 0);
}

draw_sprite_ext(sprite_index, image_index, (round(x / 2) * 2) - 0, (round(y / 2) * 2) - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (hurttimer > 0 && (hurttimer % 2) == 0 && hp != maxhp)
	draw_sprite_ext(hurt_sprite, image_index, (round(x / 2) * 2) - 0, (round(y / 2) * 2) - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (invincibility_frames > 0 && (invincibility_frames % 2) == 0)
	draw_sprite_ext(hurt_sprite, image_index, (round(x / 2) * 2) - 0, (round(y / 2) * 2) - 0, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
