timer = 0;
con = 0;
a = 0;
b = 0;
c = 0;
dir = 90;
spd = 20;
frc = -0.04;
var target_obj = 1184;

if (i_ex(obj_heart))
	target_obj = 1462;

dir = point_direction(x, y, target_obj.x, target_obj.y) - 30;
