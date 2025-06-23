with (obj_overworldbulletparent_ch1)
	active = 0;

global.interact = 3;
instance_create_ch1(0, 0, obj_fadeout_ch1);

if (touched == 0) {
	alarm[2] = 8;
	touched = 1;
}
