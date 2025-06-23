if (init == 0) {
	switch (image_index) {
		case 1:
			doorRoom = room + PLACE_DOGCHECK2;
			break;
		
		case 2:
			doorRoom = room - PLACE_DOGCHECK2;
			break;
		
		case 3:
			doorRoom = room + room_intro_ch2;
			break;
		
		case 4:
			doorRoom = room - room_intro_ch2;
			break;
		
		case 5:
			doorRoom = room + room_dw_mansion_fountain;
			break;
		
		case 6:
			doorRoom = room - room_dw_mansion_fountain;
			break;
		
		default:
			break;
	}
	
	if (image_index != 0)
		doorEntrance = image_index;
	
	if (doorSpecial != "none") {
	}
	
	init = 1;
}
