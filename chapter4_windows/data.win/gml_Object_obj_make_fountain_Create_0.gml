con = 61;
cutscene_parent = instance_find(obj_ch4_DCA15, 0);
susie_sprite = cutscene_parent.anim_marker;
active = 0;
drawkris = 0;
image_speed = 0;
image_index = 0;
image_xscale = 1;
image_yscale = 1;
balltimer = 0;
ballcon = 0;
xballtimer = 0;
yballtimer = 0;
inverttimer = 0;
ballmake = 1;
releasetimer = 0;
ceilheight = 0;
ceiltimer = 0;
fountain_sound = -4;
speed_modifier = 1;
volume_modifier = 1;

if (room == room_lw_church_entrance)
	speed_modifier = 2.4;
