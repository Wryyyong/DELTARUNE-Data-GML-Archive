snd_free_all();
colcol = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
siner = 0;
made = 0;
adjust = 0;
imageanimator = 0;
con = 0;
global.interact = 1;
y += 260;
instance_deactivate_object(obj_darkcontroller);

with (obj_mainchara)
	visible = 0;

draw_kris = true;
sneo = noone;
shortened = global.tempflag[34] == 1;
sneo_fall_sfx = false;
sneo_fall_timer = 0;
fin = instance_create(0, 0, obj_fadein);
fin.fadespeed = shortened ? -0.5 : -0.005;
debug_skip_battle = false;
depth = 10;
draw_fountain = true;
forcend = 0;
savekrisx = 0;
