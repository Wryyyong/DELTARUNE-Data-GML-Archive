function scr_actinfo(arg0) {
	actcost = -1;
	acttype = 0;
	actspell = 0;
	actor = obj_board_anchor;
	actname = " ";
	
	switch (arg0) {
		case 0:
			actcost = -1;
			acttype = 0;
			actspell = 0;
			actor = obj_board_anchor;
			actname = " ";
			break;
		
		case 1:
			actcost = -1;
			acttype = 0;
			actspell = 0;
			actor = obj_board_anchor;
			actname = "Compliment";
			break;
		
		case 2:
			actcost = -1;
			acttype = 1;
			actspell = 2;
			actor = obj_room_ranking_z;
			actname = "DualBuster";
			break;
	}
}
