scr_bullet_init();
image_alpha = 1;

if (!instance_exists(obj_heart))
	instance_destroy();

wall_destroy = 0;
destroyonhit = 0;
active = false;
action = 0;
timer = 0;
scale = 0;
circle_scale = 0;
circle_speed = 0;
circle_alpha = 1;
rot_speed = 4;
rot_speed2 = rot_speed;
counter = 0;
cooldown = 0;
flash = true;
attack_timer = 30;
alpha = 1;
dot = 0.002;
hp_max = 15;
hp = hp_max;
fade = 0;
