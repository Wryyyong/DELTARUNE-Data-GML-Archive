draw_set_color(#F4B688);
ossafe_fill_rectangle(0, 0, room_width, room_height);
draw_set_color(c_white);
var base_x = camerax() / 2;
var base_y = (cameray() / 2) + 72;
draw_sprite_ext(spr_pixel_white, 0, (base_x + 60) - 110 - 80, base_y + 440 + 20 + 80, 220, 50, 45, grad_a, 1);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 660) - 110 - 80, base_y + 480 + 20 + 80, 180, 50, 45, grad_a, 1);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 164) - 110 - 80, base_y + 450 + 20 + 80, 200, 14, 45, grad_b, 1);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 55) - 110 - 80, base_y + 440 + 20 + 80, 172, 2, 45, blend_a, 0.5);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 287) - 110 - 80, base_y + 490 + 20 + 80, 212, 2, 45, blend_a, 0.5);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 654) - 110 - 80, base_y + 480 + 20 + 80, 185, 2, 45, blend_a, 0.5);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 171) - 110 - 80, base_y + 440 + 20 + 80, 150, 1, 45, blend_b, 0.5);
draw_sprite_ext(spr_pixel_white, 0, (base_x + 251) - 110 - 80, base_y + 440 + 20 + 80, 150, 1, 45, blend_b, 0.5);
