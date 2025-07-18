enum UnknownEnum {
	Value_24 = 24
}

var ident = ds_map_find_value(async_load, "id");

if (ident == 103) {
	if (ds_map_find_value(async_load, "succeeded") == 1) {
		global.trophies = [];
		climb_timer_active = true;
		
		for (var i = 0; i < 30; i++) {
			var trophy_id = "trophy_data_unlocked_" + string(i);
			var is_unlocked = ds_map_find_value(async_load, trophy_id) == 1;
			
			if (is_unlocked) {
				global.trophies[array_length(global.trophies)] = i;
				
				if (i == UnknownEnum.Value_24)
					climb_timer_active = false;
			}
		}
		
		if (array_length(global.trophies) >= 30)
			disable_trophies();
	}
}
