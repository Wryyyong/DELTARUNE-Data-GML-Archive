scr_setparty();
depth = 16777000;
drawx = 0;
drawy = 0;
roomleft = 1440;
roomwidth = 1280;
roomtop = 440;
roomheight = 1640;
basex = roomleft;
basey = 0;
siner = 0;
con = 0;
timer = 0;
gacha = scr_marker_ext(2220, 2286, 767, 2, 2);

with (gacha)
	scr_depth_alt();

scr_musicer("findher.ogg", undefined, undefined, 30, 30);
layer_set_visible("guidelayer", 0);
init = 0;
free = 0;
global.interact = 1;
global.facing = 2;
scr_marker_blend(0, 0, 412, 2, room_width, room_height, undefined, undefined, 0.5, 3869451, 5);
scr_marker_blend(0, 0, 412, 1, room_width, room_height, undefined, undefined, 0.5, 3869451, 5);
