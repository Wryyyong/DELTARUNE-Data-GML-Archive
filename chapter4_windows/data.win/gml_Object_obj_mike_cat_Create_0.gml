scr_bullet_init();
image_alpha = 1;

if (!instance_exists(obj_heart))
	instance_destroy();

wall_destroy = 0;
homing = true;
max_speed = 5;
image_alpha = 1;
scale = 0;
xx = x;
yy = y;
image_xscale = 0;
image_yscale = image_xscale;
image_speed = 1;
wait = 0;
wait_time = 150;
action = 0;
active = false;
side = 1;
flip = 0;
mydist = 40;
alarm[0] = 1;
