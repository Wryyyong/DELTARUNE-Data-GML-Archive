spin = 0;
offsetAngle = 0;
growsine = 0;
image_xscale = 0.05;
image_yscale = 0.05;
myy = -400;
spinrate = 6;
closeness = 0;
cutOff = 0;
cupDistanceFromCenter = 0;
circleY = lengthdir_y(cupDistanceFromCenter * 0.5, spin);
forceY = 0;
spriteWidthRoot = sprite_get_width(sprite_index);
spriteHeightRoot = sprite_get_width(sprite_index);
bouncing = false;
bounceHeight = 16;
bounceCurrent = 0;
boostAmount = 8;
bounceTime = 1;
bouncesLeft = 3;
eatMe = false;
colClose = c_white;
colFar = c_gray;
bulletCollisionAngle = 18;
bulletHitHeight = 76;
groundForgiveness = 0.2;
lineToCenter = true;
hitType = 0;
damage = 6;

if (room == room_dw_mansion_b_west_2f)
	damage = 5;

if (master == -1)
	master = obj_teacup;
