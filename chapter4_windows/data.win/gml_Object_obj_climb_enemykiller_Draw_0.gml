if (keyboard_check_pressed(ord("V")))
	dodraw = !dodraw;

if (dodraw)
	draw_self();
