var xx_offset = 38;
scr_draw_sprite_tiled_area(spr_dw_green_room_vines, 0, 122 + xx_offset, 81, 122 + xx_offset, 81, 479, 110, 2, 2, c_white, 1);
shine_anim_a += 0.08;

for (var i = 0; i < 6; i++) {
	var y_offset = ((i % 2) == 1) ? 4 : 10;
	draw_sprite_ext(spr_shine_white, shine_anim_a + i, 128 + (i * 55) + xx_offset, 80 + y_offset, 2, 2, 0, #E8FFC8, 1);
}

shine_anim_b += 0.08;

for (var i = 0; i < 5; i++) {
	var y_offset = ((i % 2) == 0) ? 14 : 20;
	var x_offset = 3;
	draw_sprite_ext(spr_shine_white, shine_anim_b + 0.25 + i, 156 + (i * 65) + x_offset + xx_offset, 85 + y_offset, 2, 2, 0, #E8FFC8, 1);
}
