image_xscale = 0;
image_yscale = 0;
active = 0;
grazed = 0;
grazepoints = 5;
timepoints = 5;
target = 0;
dont = 1;
inv = 120;
damage = 1;
active = 0;
image_alpha = 0;

if (y < 50)
	y = 50;

g = instance_create(x, y, obj_afterimage_grow);
g.sprite_index = spr_smallbullet_outline;
g.image_alpha = 1.4;
g.xrate = 0.25;
g.yrate = 0.25;
g.image_xscale = 0;
g.image_yscale = 0;
special = 0;
alarm[0] = 20;
