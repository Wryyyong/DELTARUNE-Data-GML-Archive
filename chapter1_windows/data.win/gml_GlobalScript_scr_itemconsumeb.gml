function scr_itemconsumeb() {
	global.faceaction[global.charturn] = 3;
	global.charaction[global.charturn] = 4;
	global.charspecial[global.charturn] = tempitem[global.bmenucoord[4][global.charturn]][global.charturn] + 200;
	
	if (usable == 1)
		scr_itemshift_temp(global.bmenucoord[4][global.charturn], global.charturn);
	
	scr_nexthero();
}
