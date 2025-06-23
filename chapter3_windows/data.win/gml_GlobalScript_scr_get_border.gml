function scr_get_border(arg0) {
	var _border_image = _border_image_temp;
	
	if (global.chapter == 3) {
		if (global.plot < 70)
			_border_image = border_dw_tv_black;
		
		if (global.plot >= 70)
			_border_image = border_dw_blue_stars;
		
		if (global.plot >= 120)
			_border_image = border_dw_green_room;
		
		if (global.plot >= 122)
			_border_image = border_dw_tv_black;
		
		if (global.plot >= 160)
			_border_image = border_dw_green_room;
		
		if (global.plot >= 230)
			_border_image = border_dw_red_smiles;
		
		if (global.plot >= 250)
			_border_image = border_dw_teevie;
		
		if (global.plot >= 280) {
			if (i_ex(obj_dw_ch3_tvsnow))
				_border_image = border_dw_blue_light;
		}
		
		if (global.plot >= 290)
			_border_image = border_dw_tv_black;
		
		if (global.plot >= 308)
			_border_image = border_dw_blue_stars;
		
		if (global.plot >= 310)
			_border_image = border_dw_tv_black;
		
		if (global.plot >= 340)
			_border_image = border_lw_town_night;
		
		var castle_town_rooms = [67, 1534, 75, 72];
		
		for (var i = 0; i < array_length(castle_town_rooms); i++) {
			if (arg0 != castle_town_rooms[i])
				continue;
			
			_border_image = border_dw_castletown;
			break;
		}
		
		if (arg0 == 98 || arg0 == 103)
			_border_image = border_dw_tv_black;
		
		if (arg0 == 194 || arg0 == 169 || arg0 == 96 || arg0 == 226)
			_border_image = border_dw_blue_stars;
		
		if (arg0 == 193 || arg0 == 125 || arg0 == 112 || arg0 == 141)
			_border_image = border_dw_tv_meta;
		
		if (arg0 == 147 || arg0 == 167 || arg0 == 225) {
			_border_image = border_dw_green_room;
			
			if (global.plot >= 280)
				_border_image = border_dw_blue_light;
		}
		
		var sword_room = arg0 == 137 || arg0 == 136 || arg0 == 138 || arg0 == 148 || arg0 == 186;
		
		if (sword_room)
			_border_image = border_dw_tv_black;
		
		if (arg0 == 189 || arg0 == 150 || arg0 == 109 || arg0 == 236 || arg0 == 140 || arg0 == 108 || arg0 == 237 || arg0 == 161)
			_border_image = border_dw_tv_black;
		
		if (arg0 == 192 || arg0 == 170 || arg0 == 240 || arg0 == 171 || arg0 == 218)
			_border_image = border_dw_tv_blue;
		
		if (arg0 == 195 || arg0 == 213 || arg0 == 177 || arg0 == 208)
			_border_image = border_dw_teevie;
		
		if (arg0 == 139)
			_border_image = border_dw_green_sloppy;
		
		if (arg0 == 230 || arg0 == 229)
			_border_image = border_dw_green_sloppy_z;
		
		if (arg0 == 110)
			_border_image = border_lw_town_night;
	}
	
	return _border_image;
}
