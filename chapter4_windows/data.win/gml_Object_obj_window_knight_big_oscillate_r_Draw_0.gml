oscillate_speed_seconds = 4;
draw_self();
draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, image_angle, image_blend, scr_wave(0, 1, oscillate_speed_seconds, 0));
