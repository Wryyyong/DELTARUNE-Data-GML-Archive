scr_bullet_init();

if (!instance_exists(obj_heart))
	instance_destroy();

wall_destroy = 1;
image_alpha = 0;
updateimageangle = 1;
popping = 0;
spawnVirus = 1;
countdown = 0;
infection = 0;
targetsprite = sprite_index;
targetimage = image_index;
targetx = x;
targety = y;
spawning = true;
poisoncolor = #FF4FDC;
flash = 0;
infectTimer = 0;
sprite_index = spr_virovirokun_needle_spawn;
image_speed = 1/3;
virus_timer = 0;
active = false;
