split_screen_timer++;

if (split_screen_timer == 1)
	scr_lerpvar("split_screen_offset", 0, 340, 30);

if (split_screen_timer == 60) {
	instance_destroy();
	exit;
}

draw_set_color(c_black);
ossafe_fill_rectangle(camerax() - split_screen_offset, cameray(), (camerax() - split_screen_offset) + (view_wport[0] / 2), cameray() + view_hport[0]);
ossafe_fill_rectangle(camerax() + (view_wport[0] / 2) + split_screen_offset, cameray(), camerax() + view_wport[0] + split_screen_offset, cameray() + view_hport[0]);
draw_set_color(c_white);
