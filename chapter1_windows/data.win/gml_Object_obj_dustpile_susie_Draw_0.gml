draw_set_alpha(0);
draw_rectangle_colour(bbox_left, bbox_top, bbox_right, bbox_bottom, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);

if (bust == 0) {
	draw_sprite_ext(spr_dustpile_parts, 3, x, y, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_dustpile_parts, 2, x - sin(siner / 5), y + sin(siner / 5), 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_dustpile_parts, 1, x + cos(siner / 5), y + sin(siner / 5) + 1, 2, 2, 0, c_white, image_alpha);
	draw_sprite_ext(spr_dustpile_parts, 0, x + sin(siner / 5), y + sin(siner / 5), 2, 2, 0, c_white, image_alpha);
} else {
	draw_sprite_ext(spr_dustpile_parts, 4, x, y, 2, 2, 0, c_white, image_alpha);
}
