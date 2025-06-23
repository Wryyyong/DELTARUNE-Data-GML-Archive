i = 0;
loop = 1;
noroom = 0;
global.item[12] = 999;

while (loop == 1) {
	if (global.item[i] == 0) {
		global.item[i] = argument0;
		break;
	}
	
	if (i == 12) {
		noroom = 1;
		break;
	}
	
	i += 1;
}

script_execute(scr_iteminfo_all);
