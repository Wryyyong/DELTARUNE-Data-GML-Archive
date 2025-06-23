function scr_get_valid_room(arg0, arg1, arg2 = 0) {
	var chapter = arg0;
	var room_id = arg1;
	var plot = arg2;
	var current_room = new scr_valid_room(scr_get_room_by_id(room_id), plot);
	var valid_rooms;
	
	if (chapter == 1)
		valid_rooms = [new scr_valid_room(283, 0), new scr_valid_room(316, 11), new scr_valid_room(321, 11), new scr_valid_room(326, 16), new scr_valid_room(330, 33), new scr_valid_room(340, 42), new scr_valid_room(349, 55), new scr_valid_room(352, 55), new scr_valid_room(354, 60), new scr_valid_room(363, 75), new scr_valid_room(371, 75), new scr_valid_room(377, 120), new scr_valid_room(378, 130), new scr_valid_room(388, 156), new scr_valid_room(395, 165), new scr_valid_room(404, 165), new scr_valid_room(407, 175), new scr_valid_room(392, 156), new scr_valid_room(337, 0)];
	
	if (chapter == 2)
		valid_rooms = [new scr_valid_room(28, 0), new scr_valid_room(71, 0), new scr_valid_room(72, 0), new scr_valid_room(85, 0), new scr_valid_room(88, 0), new scr_valid_room(93, 0), new scr_valid_room(99, 0), new scr_valid_room(122, 0), new scr_valid_room(125, 0), new scr_valid_room(136, 0), new scr_valid_room(131, 0), new scr_valid_room(138, 0), new scr_valid_room(143, 0), new scr_valid_room(162, 0), new scr_valid_room(167, 0), new scr_valid_room(197, 0), new scr_valid_room(203, 0), new scr_valid_room(181, 0), new scr_valid_room(206, 0), new scr_valid_room(4, 0)];
	
	var is_valid = false;
	
	for (var i = 0; i < array_length_1d(valid_rooms); i++) {
		if (scr_get_id_by_room_index(current_room.room_index) == scr_get_id_by_room_index(valid_rooms[i].room_index)) {
			is_valid = true;
			break;
		}
	}
	
	if (!is_valid) {
		current_room.room_index++;
		
		for (var i = 0; i < array_length_1d(valid_rooms); i++) {
			if (scr_get_id_by_room_index(current_room.room_index) == scr_get_id_by_room_index(valid_rooms[i].room_index)) {
				is_valid = true;
				break;
			}
		}
	}
	
	if (!is_valid)
		current_room.room_index--;
	
	return current_room.room_index;
}

function scr_valid_room(arg0, arg1) constructor {
	room_index = arg0;
	plot = arg1;
}

function scr_add_valid_room(arg0, arg1, arg2) constructor {
}
