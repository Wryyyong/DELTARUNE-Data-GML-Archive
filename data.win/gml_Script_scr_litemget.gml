i = 0;
loop = 1;
noroom = 0;
global.litem[8] = 999;

while (loop == 1) {
	if (global.litem[i] == 0) {
		global.litem[i] = argument0;
		break;
	}
	
	if (i == 8) {
		noroom = 1;
		break;
	}
	
	i += 1;
}

scr_litemname();
