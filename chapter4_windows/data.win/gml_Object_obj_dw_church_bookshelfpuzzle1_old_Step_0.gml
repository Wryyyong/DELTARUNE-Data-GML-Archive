with (obj_floorTrigger) {
	if (place_meeting(x, y, obj_mainchara)) {
		var checkflag = extflag;
		
		with (obj_solid_temp) {
			if (extflag == checkflag)
				active = true;
			else
				active = false;
		}
		
		if (extflag == "FLOOR1")
			other.flooractive = 1;
		else
			other.flooractive = 2;
	}
}

with (bookshelf) {
	scr_depth();
	
	if (other.flooractive == 2)
		depth += 100000;
}

with (bookshelf2) {
	scr_depth();
	
	if (other.flooractive == 2)
		depth += 100000;
}

if (bookint.myinteract == 3) {
	global.flag[867] = 1;
	bookint.myinteract = 4;
	snd_play(snd_impact);
	book.image_blend = #3E3E3E;
	safe_delete(shelfblocker);
	safe_delete(doorblocker);
	ladder2 = scr_marker_ext(1240, 1120, 5763, 2, 2, undefined, undefined, undefined, 999999);
	scr_marker_ext(320, 1000, 1021, 80, 80, undefined, undefined, 0, 999999);
	scr_shakescreen();
}
