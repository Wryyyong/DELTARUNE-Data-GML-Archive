prefill = 0;
fill = 0;
state = 0;
timer = 0;
xx = 0;
yy = -10;
starttimer = 0;
x = obj_growtangle.x;
y = obj_growtangle.y + 58;
xstart = x;
ystart = y;
image_blend = obj_growtangle.image_blend;
image_speed = 0;
depth = obj_growtangle.depth - 1;
image_xscale = 2;
image_yscale = 2;
acidColor = c_white;

if (scr_debug() && !obj_queen_enemy.whiteAcid)
	acidColor = #B5E61D;

hurtbox = instance_create(x - 100, 400, obj_queen_wine_attack_bottom_hurtbox);
instance_create(x, y, obj_queen_wineflass_pushin);
starty = obj_queen_wineglass.y + 53;
winewave = instance_create(x, starty, obj_queen_winewave);
winewave.depth = obj_queen_wineglass.depth + 3;
winewave.xspeed = -3;
winewave.image_blend = acidColor;
winewave.image_alpha = 0.5;
winewave2 = instance_create(x, starty, obj_queen_winewave);
winewave2.depth = obj_queen_wineglass.depth + 1;
winewave2.image_blend = acidColor;
winewave2.xspeed = 4;
