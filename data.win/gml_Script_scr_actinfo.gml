actcost = -1;
acttype = 0;
actspell = 0;
actor = obj_choicer_neo;
actname = " ";

switch (argument0) {
	case 0:
		actcost = -1;
		acttype = 0;
		actspell = 0;
		actor = obj_choicer_neo;
		actname = " ";
		break;
	
	case 1:
		actcost = -1;
		acttype = 0;
		actspell = 0;
		actor = obj_choicer_neo;
		actname = scr_84_get_lang_string("scr_actinfo_slash_scr_actinfo_gml_21_0");
		break;
	
	case 2:
		actcost = -1;
		acttype = 1;
		actspell = 2;
		actor = obj_face;
		actname = scr_84_get_lang_string("scr_actinfo_slash_scr_actinfo_gml_28_0");
		break;
}
