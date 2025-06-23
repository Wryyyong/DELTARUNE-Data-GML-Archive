global.lastsavedtime = global.time;
global.lastsavedlv = global.lv;
file = "filech1_" + string(argument0);
myfileid = file_text_open_write(file);
file_text_write_string(myfileid, global.truename);
file_text_writeln(myfileid);

for (i = 0; i < 6; i += 1) {
	file_text_write_string(myfileid, global.othername[i]);
	file_text_writeln(myfileid);
}

file_text_write_real(myfileid, global.char[0]);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.char[1]);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.char[2]);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.gold);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.xp);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lv);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.inv);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.invc);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.darkzone);
file_text_writeln(myfileid);

for (i = 0; i < 4; i += 1) {
	file_text_write_real(myfileid, global.hp[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.maxhp[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.at[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.df[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.mag[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.guts[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.charweapon[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.chararmor1[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.chararmor2[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.weaponstyle[i]);
	file_text_writeln(myfileid);
	
	for (q = 0; q < 4; q += 1) {
		file_text_write_real(myfileid, global.itemat[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itemdf[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itemmag[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itembolts[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itemgrazeamt[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itemgrazesize[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itemboltspeed[i, q]);
		file_text_writeln(myfileid);
		file_text_write_real(myfileid, global.itemspecial[i, q]);
		file_text_writeln(myfileid);
	}
	
	for (j = 0; j < 12; j += 1) {
		file_text_write_real(myfileid, global.spell[i, j]);
		file_text_writeln(myfileid);
	}
}

file_text_write_real(myfileid, global.boltspeed);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.grazeamt);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.grazesize);
file_text_writeln(myfileid);

for (j = 0; j < 13; j += 1) {
	file_text_write_real(myfileid, global.item[j]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.keyitem[j]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.weapon[j]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.armor[j]);
	file_text_writeln(myfileid);
}

file_text_write_real(myfileid, global.tension);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.maxtension);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lweapon);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.larmor);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lxp);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.llv);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lgold);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lhp);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lmaxhp);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lat);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.ldf);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.lwstrength);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.ladef);
file_text_writeln(myfileid);

for (i = 0; i < 8; i += 1) {
	file_text_write_real(myfileid, global.litem[i]);
	file_text_writeln(myfileid);
	file_text_write_real(myfileid, global.phone[i]);
	file_text_writeln(myfileid);
}

for (i = 0; i < 9999; i += 1) {
	file_text_write_real(myfileid, global.flag[i]);
	file_text_writeln(myfileid);
}

file_text_write_real(myfileid, global.plot);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.currentroom);
file_text_writeln(myfileid);
file_text_write_real(myfileid, global.time);
file_text_close(myfileid);
