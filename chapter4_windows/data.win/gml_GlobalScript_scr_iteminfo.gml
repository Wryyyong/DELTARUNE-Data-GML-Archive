function scr_iteminfo(arg0) {
	usable = 0;
	replaceable = 0;
	value = 0;
	itemtarget = 0;
	itemnameb = " ";
	itemdescb = " ";
	
	switch (arg0) {
		case 0:
			itemnameb = " ";
			itemdescb = "---";
			break;
		
		case 1:
			itemnameb = stringsetloc("Darker Candy", "scr_iteminfo_slash_scr_iteminfo_gml_16_0_b");
			itemdescb = stringsetloc("Heals#120HP", "scr_iteminfo_slash_scr_iteminfo_gml_17_0");
			itemtarget = 1;
			value = 120;
			usable = 1;
			break;
		
		case 2:
			itemnameb = stringsetloc("ReviveMint", "scr_iteminfo_slash_scr_iteminfo_gml_22_0");
			itemdescb = stringsetloc("Heal#Downed#Ally", "scr_iteminfo_slash_scr_iteminfo_gml_23_0");
			itemtarget = 1;
			value = 400;
			usable = 1;
			break;
		
		case 3:
			itemnameb = stringsetloc("Glowshard", "scr_iteminfo_slash_scr_iteminfo_gml_29_0");
			itemdescb = stringsetloc("Sell#at#shops", "scr_iteminfo_slash_scr_iteminfo_gml_30_0");
			itemtarget = 0;
			value = 200 + (global.chapter * 100);
			usable = 0;
			break;
		
		case 4:
			itemnameb = stringsetloc("Manual", "scr_iteminfo_slash_scr_iteminfo_gml_36_0");
			itemdescb = stringsetloc("Read#out of#battle", "scr_iteminfo_slash_scr_iteminfo_gml_37_0");
			itemtarget = 2;
			value = 1;
			usable = 0;
			break;
		
		case 5:
			itemnameb = stringsetloc("BrokenCake", "scr_iteminfo_slash_scr_iteminfo_gml_43_0");
			itemdescb = stringsetloc("Heals#20HP", "scr_iteminfo_slash_scr_iteminfo_gml_44_0");
			itemtarget = 1;
			value = 5;
			usable = 1;
			break;
		
		case 6:
			itemnameb = stringsetloc("Top Cake", "scr_iteminfo_slash_scr_iteminfo_gml_50_0");
			itemdescb = stringsetloc("Heals#team#160HP", "scr_iteminfo_slash_scr_iteminfo_gml_51_0");
			itemtarget = 2;
			value = 150;
			usable = 1;
			break;
		
		case 7:
			var healamount = (global.chapter == 1) ? 80 : 140;
			itemnameb = stringsetloc("Spincake", "scr_iteminfo_slash_scr_iteminfo_gml_58_0");
			itemdescb = stringsetsubloc("Heals#team#~1HP", string(healamount), "scr_iteminfo_slash_scr_iteminfo_gml_59_0");
			itemtarget = 2;
			value = 5;
			usable = 1;
			break;
		
		case 8:
			itemnameb = stringsetloc("Darkburger", "scr_iteminfo_slash_scr_iteminfo_gml_65_0");
			itemdescb = stringsetloc("Heals#70HP", "scr_iteminfo_slash_scr_iteminfo_gml_66_0");
			itemtarget = 1;
			value = 70;
			usable = 1;
			break;
		
		case 9:
			itemnameb = stringsetloc("LancerCookie", "scr_iteminfo_slash_scr_iteminfo_gml_72_0");
			itemdescb = stringsetloc("Heals#50HP", "scr_iteminfo_slash_scr_iteminfo_gml_73_0");
			itemtarget = 1;
			value = 10;
			usable = 1;
			break;
		
		case 10:
			itemnameb = stringsetloc("GigaSalad", "scr_iteminfo_slash_scr_iteminfo_gml_79_0");
			itemdescb = stringsetloc("Heals#4HP", "scr_iteminfo_slash_scr_iteminfo_gml_80_0");
			itemtarget = 1;
			value = 10;
			usable = 1;
			break;
		
		case 11:
			itemnameb = stringsetloc("ClubsSandwich", "scr_iteminfo_slash_scr_iteminfo_gml_86_0");
			itemdescb = stringsetloc("Heals#team#70HP", "scr_iteminfo_slash_scr_iteminfo_gml_87_0");
			itemtarget = 2;
			value = 70;
			usable = 1;
			break;
		
		case 12:
			itemnameb = stringsetloc("HeartsDonut", "scr_iteminfo_slash_scr_iteminfo_gml_93_0");
			itemdescb = stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_94_0");
			itemtarget = 1;
			value = 40;
			usable = 1;
			break;
		
		case 13:
			itemnameb = stringsetloc("ChocDiamond", "scr_iteminfo_slash_scr_iteminfo_gml_100_0");
			itemdescb = stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_101_0");
			itemtarget = 1;
			value = 40;
			usable = 1;
			break;
		
		case 14:
			itemnameb = stringsetloc("Favwich", "scr_iteminfo_slash_scr_iteminfo_gml_107_0");
			itemdescb = stringsetloc("Heals#ALL HP", "scr_iteminfo_slash_scr_iteminfo_gml_108_0");
			itemtarget = 1;
			value = 10;
			usable = 1;
			break;
		
		case 15:
			itemnameb = stringsetloc("RouxlsRoux", "scr_iteminfo_slash_scr_iteminfo_gml_114_0");
			itemdescb = stringsetloc("Heals#50 HP", "scr_iteminfo_slash_scr_iteminfo_gml_115_0");
			itemtarget = 1;
			value = 50;
			usable = 1;
			break;
		
		case 16:
			itemnameb = stringsetloc("CD Bagel", "scr_iteminfo_slash_scr_iteminfo_gml_121_0");
			itemdescb = stringsetloc("Heals#80 HP", "scr_iteminfo_slash_scr_iteminfo_gml_122_0");
			itemtarget = 1;
			value = 100;
			usable = 1;
			break;
		
		case 17:
			itemnameb = stringsetloc("Mannequin", "scr_iteminfo_slash_scr_iteminfo_gml_128_0");
			itemdescb = stringsetloc("Useless", "scr_iteminfo_slash_scr_iteminfo_gml_129_0");
			itemtarget = 0;
			value = 300;
			usable = 0;
			break;
		
		case 18:
			itemnameb = scr_text(1458);
			itemdescb = scr_text(1459);
			itemtarget = 1;
			value = 2;
			usable = 1;
			break;
		
		case 19:
			itemnameb = scr_text(1458);
			itemdescb = scr_text(1459);
			itemtarget = 1;
			value = 2;
			usable = 1;
			break;
		
		case 20:
			itemnameb = scr_text(1458);
			itemdescb = scr_text(1459);
			itemtarget = 1;
			value = 2;
			usable = 1;
			break;
		
		case 21:
			itemnameb = scr_text(1458);
			itemdescb = scr_text(1459);
			itemtarget = 1;
			value = 2;
			usable = 1;
			break;
		
		case 22:
			itemnameb = stringsetloc("DD-Burger", "scr_iteminfo_slash_scr_iteminfo_gml_163_0");
			itemdescb = stringsetloc("Heals#60HP 2x", "scr_iteminfo_slash_scr_iteminfo_gml_164_0");
			itemtarget = 1;
			value = 110;
			usable = 1;
			replaceable = 8;
			break;
		
		case 23:
			itemnameb = stringsetloc("LightCandy", "scr_iteminfo_slash_scr_iteminfo_gml_171_0");
			itemdescb = stringsetloc("Heals#120HP", "scr_iteminfo_slash_scr_iteminfo_gml_172_0");
			itemtarget = 1;
			value = 200;
			usable = 1;
			break;
		
		case 24:
			itemnameb = stringsetloc("ButJuice", "scr_iteminfo_slash_scr_iteminfo_gml_178_0");
			itemdescb = stringsetloc("Heals#100HP", "scr_iteminfo_slash_scr_iteminfo_gml_179_0");
			itemtarget = 1;
			value = 200;
			usable = 1;
			break;
		
		case 25:
			itemnameb = stringsetloc("SpagettiCode", "scr_iteminfo_slash_scr_iteminfo_gml_185_0");
			itemdescb = stringsetloc("Heals#team#30HP", "scr_iteminfo_slash_scr_iteminfo_gml_186_0");
			itemtarget = 2;
			value = 180;
			usable = 1;
			break;
		
		case 26:
			itemnameb = stringsetloc("JavaCookie", "scr_iteminfo_slash_scr_iteminfo_gml_192_0");
			itemdescb = stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_193_0");
			itemtarget = 1;
			value = 160;
			usable = 1;
			break;
		
		case 27:
			itemnameb = stringsetloc("TensionBit", "scr_iteminfo_slash_scr_iteminfo_gml_199_0");
			itemdescb = stringsetloc("Raises#TP#32%", "scr_iteminfo_slash_scr_iteminfo_gml_200_0");
			itemtarget = 2;
			value = 100;
			usable = 1;
			break;
		
		case 28:
			itemnameb = stringsetloc("TensionGem", "scr_iteminfo_slash_scr_iteminfo_gml_206_0");
			itemdescb = stringsetloc("Raises#TP#50%", "scr_iteminfo_slash_scr_iteminfo_gml_207_0");
			itemtarget = 2;
			value = 300;
			usable = 1;
			break;
		
		case 29:
			itemnameb = stringsetloc("TensionMax", "scr_iteminfo_slash_scr_iteminfo_gml_213_0");
			itemdescb = stringsetloc("Raises#TP#Max", "scr_iteminfo_slash_scr_iteminfo_gml_214_0");
			itemtarget = 2;
			value = 1000;
			usable = 1;
			break;
		
		case 30:
			itemnameb = stringsetloc("ReviveDust", "scr_iteminfo_slash_scr_iteminfo_gml_220_0");
			itemdescb = stringsetloc("Revives#team#25%", "scr_iteminfo_slash_scr_iteminfo_gml_221_0");
			itemtarget = 2;
			value = 100;
			usable = 1;
			break;
		
		case 31:
			itemnameb = stringsetloc("ReviveBrite", "scr_iteminfo_slash_scr_iteminfo_gml_227_0");
			itemdescb = stringsetloc("Revives#team#100%", "scr_iteminfo_slash_scr_iteminfo_gml_228_0");
			itemtarget = 2;
			value = 4000;
			usable = 1;
			break;
		
		case 32:
			itemnameb = stringsetloc("S.POISON", "scr_iteminfo_slash_scr_iteminfo_gml_234_0");
			itemdescb = stringsetloc("Hurts#party#member", "scr_iteminfo_slash_scr_iteminfo_gml_235_0");
			itemtarget = 1;
			value = 110;
			usable = 1;
			break;
		
		case 33:
			itemnameb = stringsetloc("DogDollar", "scr_iteminfo_slash_scr_iteminfo_gml_241_0");
			itemdescb = stringsetloc("Not#so#useful", "scr_iteminfo_slash_scr_iteminfo_gml_242_0");
			itemtarget = 0;
			value = floor(200 / global.chapter);
			usable = 0;
			break;
		
		case 34:
			itemnameb = stringsetloc("TVDinner", "scr_iteminfo_slash_scr_iteminfo_gml_249_0");
			itemdescb = stringsetloc("Heals#100HP", "scr_iteminfo_slash_scr_iteminfo_gml_250_0");
			itemtarget = 1;
			value = 200;
			usable = 1;
			break;
		
		case 35:
			itemnameb = stringsetloc("Pipis", "scr_iteminfo_slash_scr_iteminfo_gml_256_0");
			itemdescb = stringsetloc("Does#nothing", "scr_iteminfo_slash_scr_iteminfo_gml_257_0");
			itemtarget = 1;
			value = 0;
			usable = 1;
			break;
		
		case 36:
			itemnameb = stringsetloc("FlatSoda", "scr_iteminfo_slash_scr_iteminfo_gml_263_0");
			itemdescb = stringsetloc("Heals#20HP", "scr_iteminfo_slash_scr_iteminfo_gml_264_0");
			itemtarget = 1;
			value = 2;
			usable = 1;
			break;
		
		case 37:
			itemnameb = stringsetloc("TVSlop", "scr_iteminfo_slash_scr_iteminfo_gml_270_0");
			itemdescb = stringsetloc("Heals#80HP", "scr_iteminfo_slash_scr_iteminfo_gml_271_0");
			itemtarget = 1;
			value = 200;
			usable = 1;
			break;
		
		case 38:
			itemnameb = stringsetloc("ExecBuffet", "scr_iteminfo_slash_scr_iteminfo_gml_277_0");
			itemdescb = stringsetloc("Heals#team#100HP", "scr_iteminfo_slash_scr_iteminfo_gml_278_0");
			itemtarget = 2;
			value = 600;
			usable = 1;
			break;
		
		case 39:
			itemnameb = stringsetloc("DeluxeDinner", "scr_iteminfo_slash_scr_iteminfo_gml_284_0");
			itemdescb = stringsetloc("Heals#140HP", "scr_iteminfo_slash_scr_iteminfo_gml_285_0");
			itemtarget = 1;
			value = 600;
			usable = 1;
			break;
		
		case 60:
			itemnameb = stringsetloc("AncientSweet", "scr_iteminfo_slash_scr_iteminfo_gml_291_0");
			itemdescb = stringsetloc("Kris only#+400", "scr_iteminfo_slash_scr_iteminfo_gml_292_0");
			itemtarget = 1;
			value = 1000;
			usable = 1;
			break;
		
		case 61:
			itemnameb = stringsetloc("Rhapsotea", "scr_iteminfo_slash_scr_iteminfo_gml_298_0");
			itemdescb = stringsetloc("Heals#115HP", "scr_iteminfo_slash_scr_iteminfo_gml_299_0");
			itemtarget = 1;
			value = 250;
			usable = 1;
			break;
		
		case 62:
			itemnameb = stringsetloc("Scarlixir", "scr_iteminfo_slash_scr_iteminfo_gml_305_0");
			itemdescb = stringsetloc("Heals#160HP", "scr_iteminfo_slash_scr_iteminfo_gml_306_0");
			itemtarget = 1;
			value = 450;
			usable = 1;
			break;
		
		case 63:
			itemnameb = stringsetloc("BitterTear", "scr_iteminfo_slash_scr_iteminfo_gml_312_0");
			itemdescb = stringsetloc("Heals#All HP", "scr_iteminfo_slash_scr_iteminfo_gml_313_0");
			itemtarget = 1;
			value = 0;
			usable = 1;
			break;
	}
}
