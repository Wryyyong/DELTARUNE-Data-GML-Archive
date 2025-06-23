function scr_lweaponeq_ch1(arg0, arg1) {
	if (arg0 >= 0)
		global.litem[arg0] = global.lweapon;
	
	global.lweapon = arg1;
	
	if (global.lweapon == 2)
		global.lwstrength = 1;
	
	if (global.lweapon == 6)
		global.lwstrength = 1;
	
	if (global.lweapon == 7)
		global.lwstrength = 1;
	
	script_execute(scr_litemname_ch1);
}
