destroyoffscreen = false;
tolerance = 32;
active = 1;
target = 3;
hit = 0;
damage = 25;
dir = 2;
prefdir = "left";
neutralcon = 0;
waittime = 30;
waittimer = 0;
updwait = -1;
movetime = 12;
movetimer = 0;
updmove = -1;
safex = x;
safey = y;
scr_depth();
doom = false;
init = 0;
movetype = 0;
influenceable = true;
homedistance = 120;
lastdir = -1;
failmovecount = 0;
failmovethresh = 4;

if (i_ex(obj_dw_churchc_dodge))
	sprite_index = spr_climb_chaseenemy_40_centercollision;

movevistype = 0;
image_index = irandom(99);
image_speed = 0.25;
idir = 0;
animindex = 0;
image_alpha = 0;
