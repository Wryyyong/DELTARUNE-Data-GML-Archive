scr_bullet_init();
image_alpha = 1;

if (!instance_exists(obj_heart))
	instance_destroy();

wall_destroy = 0;
destroyonhit = false;
timepoints = 0;
width = 27;
cycle_length = 40;
ticker = 0;
timer = 0;
basex = x;
basey = y;
doomed = false;
hflip = 1;
vflip = 1;
init = false;
mask_index = spr_no_mask;
path = path_add();
current_timer = 0;
rate = 4;
base_rate = 4;

with (obj_dbulletcontroller)
	scr_bullet_inherit(other.id);

grazed = true;
grazepoints = 0;
iris = true;
iris_dir = -1;
trueprevx = x;
trueprevy = y;
