snd_free_all();
filechoicebk = global.filechoice;
scr_gamestart();
global.filechoice = filechoicebk;
file = "filech1_" + string(global.filechoice);
myfileid = file_text_open_read(file);
global.truename = file_text_read_string(myfileid);
file_text_readln(myfileid);

for (i = 0; i < 6; i += 1) {
	global.othername[i] = file_text_read_string(myfileid);
	file_text_readln(myfileid);
}

global.char[0] = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.char[1] = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.char[2] = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.gold = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.xp = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lv = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.inv = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.invc = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.darkzone = file_text_read_real(myfileid);
file_text_readln(myfileid);

for (i = 0; i < 4; i += 1) {
	global.hp[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.maxhp[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.at[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.df[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.mag[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.guts[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.charweapon[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.chararmor1[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.chararmor2[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.weaponstyle[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	
	for (q = 0; q < 4; q += 1) {
		global.itemat[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itemdf[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itemmag[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itembolts[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itemgrazeamt[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itemgrazesize[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itemboltspeed[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
		global.itemspecial[i, q] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
	}
	
	for (j = 0; j < 12; j += 1) {
		global.spell[i, j] = file_text_read_real(myfileid);
		file_text_readln(myfileid);
	}
}

global.boltspeed = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.grazeamt = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.grazesize = file_text_read_real(myfileid);
file_text_readln(myfileid);

for (j = 0; j < 13; j += 1) {
	global.item[j] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.keyitem[j] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.weapon[j] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.armor[j] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
}

global.tension = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.maxtension = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lweapon = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.larmor = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lxp = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.llv = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lgold = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lhp = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lmaxhp = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lat = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.ldf = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.lwstrength = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.ladef = file_text_read_real(myfileid);
file_text_readln(myfileid);

for (i = 0; i < 8; i += 1) {
	global.litem[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
	global.phone[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
}

for (i = 0; i < 9999; i += 1) {
	global.flag[i] = file_text_read_real(myfileid);
	file_text_readln(myfileid);
}

global.plot = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.currentroom = file_text_read_real(myfileid);
file_text_readln(myfileid);
global.time = file_text_read_real(myfileid);
file_text_readln(myfileid);
file_text_close(myfileid);
global.lastsavedtime = global.time;
global.lastsavedlv = global.lv;
file_text_close(myfileid);
scr_tempsave();
audio_group_set_gain(1, global.flag[15], 0);
audio_set_master_gain(0, global.flag[17]);

if (global.plot >= 156) {
	for (i = 0; i < 4; i += 1)
		global.charauto[i] = 0;
}

__loadedroom = global.currentroom;

if (scr_dogcheck())
	__loadedroom = 131;

room_goto(__loadedroom);
