draw_sprite_ext(sprite_index, image_index, round(x / 2) * 2, (round(y / 2) * 2) + yoffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if (hurttimer > 0 && (hurttimer % 2) == 0 && hp != maxhp)
	draw_sprite_ext(spr_board_blue_bird_hurt, image_index, round(x / 2) * 2, (round(y / 2) * 2) + yoffset, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
