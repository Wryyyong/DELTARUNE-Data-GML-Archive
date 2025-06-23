if (active == 0 && (x != mouse_x || y != mouse_y)) {
	active = 1;
	
	if (!useSprite)
		cursor_sprite = spr_poppup_mouse;
}
