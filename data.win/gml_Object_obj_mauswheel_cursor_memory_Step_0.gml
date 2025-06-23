if (!recording)
	exit;

if (global.turntimer <= 0) {
	recording = 0;
	addIndex = 0;
	exit;
}

xpos[addIndex] = obj_heart.x;
ypos[addIndex] = obj_heart.y;
addIndex++;
