if (keyboard_check_pressed(ord("V")))
	dodraw = !dodraw;

if (dodraw == false)
	exit;

draw_self();
