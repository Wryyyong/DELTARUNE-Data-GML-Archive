draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text_ext(camerawidth() * 0.5, 200, desc[mode], 20, 240);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
ossafe_fill_rectangle_color(45, 45 + (20 * mode), 45 + string_width(name[mode]), 45 + (20 * mode) + (string_height(name[mode]) * 0.75), 128, 128, 128, 128, false);
draw_text(40, 40, name[0]);
draw_text(40, 60, name[1]);
draw_text(40, 80, name[2]);
draw_text(40, 100, name[3]);
draw_text(40, 120, name[4]);
draw_circle(mouse_x, mouse_y, 5, 1);
draw_point(mouse_x, mouse_y);
