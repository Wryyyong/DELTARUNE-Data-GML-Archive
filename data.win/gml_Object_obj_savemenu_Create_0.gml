cur_jewel = 0;
saved = 0;
coord = 0;
ini_ex = 0;
buffer = 3;
name = scr_84_get_lang_string("obj_savemenu_slash_Create_0_gml_7_0");
level = 1;
love = 1;
time = 0;
roome = 0;
endme = 0;
global.currentroom = room;
global.interact = 1;

if (file_exists("dr.ini")) {
	ini_ex = 1;
	iniread = ini_open("dr.ini");
	name = ini_read_string("G" + string(global.filechoice), "Name", "Kris");
	level = ini_read_real("G" + string(global.filechoice), "Level", 1);
	love = ini_read_real("G" + string(global.filechoice), "Love", 1);
	time = ini_read_real("G" + string(global.filechoice), "Time", 0);
	roome = ini_read_real("G" + string(global.filechoice), "Room", 0);
	ini_close();
}

d = global.darkzone + 1;
minutes = floor(time / 1800);
seconds = round(((time / 1800) - minutes) * 60);

if (seconds == 60)
	seconds = 59;

if (seconds < 10)
	seconds = "0" + string(seconds);

scr_roomname(roome);

if (d == 2)
	heartsprite = spr_heart;

if (d == 1)
	heartsprite = spr_heartsmall;

if (d == 1)
	name = scr_84_get_lang_string("obj_savemenu_slash_Create_0_gml_43_0");
