switch (ds_map_find_value(async_load, "event_type")) {
	case "gamepad discovered":
		var pad = ds_map_find_value(async_load, "pad_index");
		
		if (gamepad_is_connected(pad)) {
			gamepad_active = 1;
			gamepad_id = pad;
		}
		
		break;
	
	case "gamepad lost":
		gamepad_active = 0;
		
		if (os_type == os_switch) {
			if (switch_controller_support_show() == 0) {
				gamepad_active = 1;
				gamepad_id = switch_controller_support_get_selected_id();
			}
		}
		
		break;
}
