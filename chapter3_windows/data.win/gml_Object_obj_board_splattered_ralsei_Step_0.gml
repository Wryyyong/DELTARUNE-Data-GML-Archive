scr_depth_board();

if (y != 224) {
	y = lerp(y, 224, 0.25);
	y = scr_even(y);
}

if (x >= 480) {
	x = 480;
	stuck = true;
}

if (x <= 128) {
	x = 128;
	stuck = true;
}

if (stuck == false) {
	if (place_meeting(x, y, kris) || place_meeting(x, y, susie)) {
		if (splatside == 1)
			x += 4;
		else
			x -= 4;
	}
}

if (obj_board_camera.con != 0 || instance_exists(obj_gameover_minigame)) {
	scr_play_recording("ralsei", "0W");
	ralsei.x = x;
	ralsei.y = y;
	ralsei.visible = true;
	instance_destroy();
}
