function scr_armorinfo(arg0) {
	switch (arg0) {
		case 0:
			armornametemp = " ";
			armordesctemp = " ";
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_8_0");
			amessage3temp = " ";
			armorattemp = 0;
			armordftemp = 0;
			armormagtemp = 0;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 0;
			armorchar3temp = 1;
			armorabilitytemp = " ";
			armorabilityicontemp = 0;
			armoricontemp = 0;
			value = 0;
			break;
		
		case 1:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_26_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_27_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_28_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_29_0");
			armorattemp = 0;
			armordftemp = 1;
			armormagtemp = 0;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 1;
			armorchar3temp = 1;
			armorabilitytemp = " ";
			armorabilityicontemp = 0;
			armoricontemp = 4;
			value = 100;
			break;
		
		case 2:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_46_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_47_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_48_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_49_0");
			armorattemp = 0;
			armordftemp = 2;
			armormagtemp = 0;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 1;
			armorchar3temp = 1;
			armorabilitytemp = " ";
			armorabilityicontemp = 0;
			armoricontemp = 4;
			value = 150;
			break;
		
		case 3:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_66_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_67_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_68_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_69_0");
			armorattemp = 0;
			armordftemp = 1;
			armormagtemp = 0;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 20;
			armorchar1temp = 1;
			armorchar2temp = 0;
			armorchar3temp = 1;
			armorabilitytemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_79_0");
			armorabilityicontemp = 7;
			armoricontemp = 4;
			value = 100;
			break;
		
		case 4:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_87_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_88_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_89_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_90_0");
			
			if (instance_exists(obj_hathyfightevent))
				amessage3temp = " ";
			
			armorattemp = 0;
			armordftemp = 2;
			armormagtemp = 0;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 0;
			armorchar3temp = 1;
			armorabilitytemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_101_0");
			armorabilityicontemp = 7;
			armoricontemp = 4;
			value = 90;
			break;
		
		case 5:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_108_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_109_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_110_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_111_0");
			armorattemp = 1;
			armordftemp = 2;
			armormagtemp = 0;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 1;
			armorchar3temp = 1;
			armorabilitytemp = " ";
			armorabilityicontemp = 0;
			armoricontemp = 4;
			value = 150;
			break;
		
		case 6:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_128_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_129_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_130_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_131_0");
			armorattemp = 0;
			armordftemp = 0;
			armormagtemp = 2;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 1;
			armorchar3temp = 1;
			armorabilitytemp = " ";
			armorabilityicontemp = 0;
			armoricontemp = 4;
			value = 120;
			break;
		
		case 7:
			armornametemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_148_0");
			armordesctemp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_149_0");
			amessage2temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_150_0");
			amessage3temp = scr_84_get_lang_string("scr_armorinfo_slash_scr_armorinfo_gml_151_0");
			armorattemp = 2;
			armordftemp = 2;
			armormagtemp = 2;
			armorboltstemp = 0;
			armorgrazeamttemp = 0;
			armorgrazesizetemp = 0;
			armorchar1temp = 1;
			armorchar2temp = 1;
			armorchar3temp = 1;
			armorabilitytemp = " ";
			armorabilityicontemp = 0;
			armoricontemp = 4;
			value = 0;
			break;
	}
}
