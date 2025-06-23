scr_bullet_init();
damage = 0;
image_alpha = 1;

if (!instance_exists(obj_heart))
	instance_destroy();

wall_destroy = 0;
destroyonhit = false;
mask_index = spr_no_mask;
ticks = 0;
completed_ticks = 0;
feared = false;
run_threshold = 5;
pitch = 1;
prog = 0;
targ_x = -1;
targ_y = -1;
last_tx = -1;
last_ty = -1;
mercy_cooldown = 0;
total_ticks = 0;
reset_timer = 0;
tick_chain = 0;
mercy = 0;
fleetype = 1;
accelmultiplier = 1;
light_distance = obj_lightsource_heartlight.radius + 15;
shake_power = 2;
biggerrad = obj_lightsource_heartlight.biggerrad;
face_timer = 0;
quick_start = false;
timer = 0;
scare_con = 0;
burst_damage = false;
screamsound = -4;
sizer = 0;
size = 1;
shakex = 0;
shakey = 0;
bright = false;
jumptimer = 0;
jumpthreshold = 30;
screamcon = 0;
shrink = 0;
siner = 0;
size_cooldown = 0;
size_siner = 0;
fader = -4;
end_con = 0;
init = false;
size_offset = 1;
battle_end = 190;
last_distance = 0;
funny = false;
sx[0] = 0;
sx[1] = 0;
sx[2] = 0;
sx[3] = 0;
sy[0] = 0;
sy[1] = 0;
sy[2] = 0;
sy[3] = 0;

with (obj_jackenstein_enemy) {
	if (spooked)
		other.quick_start = true;
}

first_turn = !quick_start;
head_sprite = spr_guywhoappearswhenyouhavetakentoolongbutgotanastysurprise;
mouth_sprite = 1809;
