book_con = -1;
bookcase_left = scr_dark_marker(200, 120, spr_dw_mansion_bookcase);
bookcase_left.setdepth = 0;
bookcase_left.depth = 850050;
bookcase_collider = -4;
shine = -4;
weretriggered = 0;
encounterflag = 547;

if (global.flag[encounterflag] != 0)
	weretriggered = 3;

if (scr_sideb_get_phase() >= 3)
	weretriggered = 3;
