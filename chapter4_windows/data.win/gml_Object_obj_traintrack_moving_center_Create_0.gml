event_inherited();
track_sprite = 5737;

switch (image_angle) {
	case 0:
		center_x = x + 15;
		center_y = y + 15;
		break;
	
	case 90:
		center_x = x + 15;
		center_y = y - 15;
		break;
	
	case 180:
		center_x = x - 15;
		center_y = y - 15;
		break;
	
	case 270:
		center_x = x - 15;
		center_y = y + 15;
		break;
}
