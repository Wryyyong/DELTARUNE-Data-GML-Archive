if (i_ex(obj_tenna_enemy))
	exit;

var jump = abs(x - xprevious) * 0.125;
ossafe_fill_rectangle_color(x - 151, y - abs(sin(timer * 0.5) * jump * 2) - 51 - 60, x + 151, ((y - abs(sin(timer * 0.5) * jump * 2)) + 51) - 60, 16777215, 16777215, 16777215, 16777215);
ossafe_fill_rectangle_color(x - 149, y - abs(sin(timer * 0.5) * jump * 2) - 49 - 60, x + 149, ((y - abs(sin(timer * 0.5) * jump * 2)) + 49) - 60, 0, 0, 0, 0);
draw_sprite_ext(sprite_index, image_index, x - 155, (y - abs(sin(timer * 0.5) * jump * 2)) + 4, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x + 155, (y - abs(sin(timer * 0.5) * jump * 2)) + 4, -image_xscale, image_yscale, image_angle, image_blend, image_alpha);
