scr_bullet_init();
destroyonhit = 0;
difficulty = 1;
times = 0;
activetimer = 0;
grazed = 0;
grazepoints = 5;
timepoints = 5;
target = 0;
dont = 1;
inv = 120;
damage = 124;
active = 0;
image_alpha = 0;
image_speed = 0;

if (!instance_exists(obj_heart))
	instance_destroy();

jumpsiner = random(100);
hspeed = -3 - random(1);
jumpspeed = 8 + random(4);
jumpheight = 50 + random(10);
image_xscale = 2;
image_yscale = 2;
