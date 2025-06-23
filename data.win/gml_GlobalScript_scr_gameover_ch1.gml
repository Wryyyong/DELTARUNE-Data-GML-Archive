enum e__VW {
	XView,
	YView,
	WView,
	HView,
	Angle,
	HBorder,
	VBorder,
	HSpeed,
	VSpeed,
	Object,
	Visible,
	XPort,
	YPort,
	WPort,
	HPort,
	Camera,
	SurfaceID
}

function scr_gameover_ch1() {
	audio_stop_all();
	snd_play_ch1(snd_hurt1_ch1);
	
	if (room != room_forest_fightsusie_ch1) {
		global.screenshot = sprite_create_from_surface(application_surface, 0, 0, __view_get(e__VW.WView, 0), __view_get(e__VW.HView, 0), false, false, 0, 0);
		snd_free_all_ch1();
		room_goto(room_gameover_ch1);
	} else {
		global.entrance = 0;
		global.tempflag[9] = 1;
		room_goto(room_forest_savepoint3_ch1);
	}
}
