b = 16;

if (heartobj.x >= ((x + (sprite_width / 2)) - b - 8))
	heartobj.x = (x + (sprite_width / 2)) - b - 8;

if (heartobj.x <= (((x - (sprite_width / 2)) + b) - 8))
	heartobj.x = ((x - (sprite_width / 2)) + b) - 8;

if (heartobj.y >= ((y + (sprite_height / 2)) - b - 8))
	heartobj.y = (y + (sprite_height / 2)) - b - 8;

if (heartobj.y <= (((y - (sprite_height / 2)) + b) - 8))
	heartobj.y = ((y - (sprite_height / 2)) + b) - 8;
