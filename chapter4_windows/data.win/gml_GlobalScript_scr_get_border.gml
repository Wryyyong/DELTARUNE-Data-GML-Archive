function scr_get_border(arg0) {
	var _border_image = _border_image_temp;
	
	if (global.chapter == 4) {
		if (global.plot > 105)
			_border_image = border_dw_church_a;
		
		if (global.plot >= 225)
			_border_image = border_dw_church_b;
		
		if (global.plot >= 240)
			_border_image = border_dw_church_c;
		
		if (global.plot >= 300)
			_border_image = border_lw_town_night;
		
		var castle_town_rooms = [76, 1399, 84, 81, 64, 246, 61, 62, 63, 66, 67, 68, 69, 70, 71, 154, 72, 73, 74, 155, 167, 168, 297, 321, 322, 323, 324, 325, 298, 65, 262, 263, 264];
		
		for (var i = 0; i < array_length(castle_town_rooms); i++) {
			if (arg0 != castle_town_rooms[i])
				continue;
			
			_border_image = border_dw_castletown;
			break;
		}
		
		if (arg0 == 18 || arg0 == 15 || arg0 == 24 || arg0 == 49) {
			if (global.plot < 290)
				_border_image = border_lw_town;
		}
		
		var church_a_rooms = [177, 108, 227, 115, 219, 218, 261];
		
		for (var i = 0; i < array_length(church_a_rooms); i++) {
			if (arg0 != church_a_rooms[i])
				continue;
			
			_border_image = border_dw_church_a;
			break;
		}
		
		var church_b_rooms = [266, 267, 257, 247, 251, 304];
		
		for (var i = 0; i < array_length(church_b_rooms); i++) {
			if (arg0 != church_b_rooms[i])
				continue;
			
			_border_image = border_dw_church_b;
			break;
		}
		
		var church_c_rooms = [270, 277, 280, 275];
		
		for (var i = 0; i < array_length(church_c_rooms); i++) {
			if (arg0 != church_c_rooms[i])
				continue;
			
			_border_image = border_dw_church_c;
			break;
		}
		
		if (arg0 == 285 || arg0 == 305 || arg0 == 286 || arg0 == 306)
			_border_image = border_dw_titan_base;
		
		if (arg0 == 28) {
			if (global.plot >= 290)
				_border_image = border_lw_town_night;
		}
	}
	
	return _border_image;
}
