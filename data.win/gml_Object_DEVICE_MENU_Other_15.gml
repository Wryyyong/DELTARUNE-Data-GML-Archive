iniwrite = ini_open("dr.ini");
_NEWNAME = ini_read_string("G" + string(MENUCOORD[2]), "Name", "------");
_NEWTIME = ini_read_real("G" + string(MENUCOORD[2]), "Time", 0);
_NEWROOM = ini_read_real("G" + string(MENUCOORD[2]), "Room", 0);
_NEWLEVEL = ini_read_real("G" + string(MENUCOORD[2]), "Level", 0);
ini_write_string("G" + string(MENUCOORD[3]), "Name", _NEWNAME);
ini_write_real("G" + string(MENUCOORD[3]), "Time", _NEWTIME);
ini_write_real("G" + string(MENUCOORD[3]), "Room", _NEWROOM);
ini_write_real("G" + string(MENUCOORD[3]), "Level", _NEWLEVEL);
ini_close();
FILE[MENUCOORD[3]] = 1;
PLACE[MENUCOORD[3]] = PLACE[MENUCOORD[2]];
TIME[MENUCOORD[3]] = TIME[MENUCOORD[2]];
NAME[MENUCOORD[3]] = NAME[MENUCOORD[2]];
LEVEL[MENUCOORD[3]] = LEVEL[MENUCOORD[2]];
TIME_STRING[MENUCOORD[3]] = TIME_STRING[MENUCOORD[2]];
file_copy("filech1_" + string(MENUCOORD[2]), "filech1_" + string(MENUCOORD[3]));

if (file_exists("config_" + string(MENUCOORD[2]) + ".ini"))
	file_copy("config_" + string(MENUCOORD[2]) + ".ini", "config_" + string(MENUCOORD[3]) + ".ini");
