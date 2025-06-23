if (!init)
	exit;

draw_set_font(_font);
draw_set_halign(fa_center);
draw_set_alpha(_alpha);
draw_text_transformed(320, _y_pos, _text, 2, 2, 0);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_alpha(1);
