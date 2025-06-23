switch (ds_map_find_value(async_load, "event_type")) {
	case "gamepad discovered":
		var pad = ds_map_find_value(async_load, "pad_index");
		
		if (gamepad_is_connected(pad)) {
			gamepad_active = 1;
			gamepad_id = pad;
			var is_ps_controller = false;
			var gamepad_description = gamepad_get_description(gamepad_id);
			
			switch (gamepad_description) {
				case "Sony DualShock 4":
					is_ps_controller = true;
					break;
				
				case "DualSense Wireless Controller":
					is_ps_controller = true;
					break;
			}
			
			gamepad_type = is_ps_controller ? 1 : 0;
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
