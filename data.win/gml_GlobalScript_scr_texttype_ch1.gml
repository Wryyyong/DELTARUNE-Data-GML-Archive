function scr_texttype_ch1() {
	textscale = 1;
	var extra_ja_vspace = 0;
	
	if (!variable_global_exists("chemg_typer"))
		global.chemg_typer = -1;
	
	if (global.chemg_typer != global.typer)
		global.chemg_typer = global.typer;
	
	var font_set = 1;
	
	switch (global.typer) {
		case 0:
			font_set = 0;
			break;
		
		case 1:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0);
			break;
		
		case 2:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 491, 8, 18, 0);
			break;
		
		case 3:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 356, 8, 18, 1);
			break;
		
		case 4:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 356, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 5:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0);
			break;
		
		case 6:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 356, 16, 36, 1);
			break;
		
		case 7:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 355, 8, 18, 0);
			break;
		
		case 8:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 355, 8, 18, 0);
			break;
		
		case 10:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 347, 8, 18, 0);
			break;
		
		case 11:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 347, 8, 18, 0);
			break;
		
		case 12:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 348, 8, 18, 0);
			break;
		
		case 13:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 349, 8, 18, 0);
			break;
		
		case 14:
			scr_textsetup_ch1(scr_84_get_font_ch1("comicsans"), 16777215, x, y, 33, 0, 1, 345, 8, 18, 0);
			break;
		
		case 15:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0);
			break;
		
		case 16:
			font_set = 0;
			break;
		
		case 17:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 346, 8, 18, 0);
			break;
		
		case 18:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 343, 8, 18, 0);
			break;
		
		case 19:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 356, 8, 18, 0);
			break;
		
		case 20:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 354, 8, 18, 0);
			break;
		
		case 21:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 354, 8, 18, 0);
			break;
		
		case 22:
			scr_textsetup_ch1(scr_84_get_font_ch1("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 354, 6, 18, 0);
			break;
		
		case 23:
			scr_textsetup_ch1(scr_84_get_font_ch1("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 348, 6, 18, 0);
			break;
		
		case 30:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 347, 16, 36, 1);
			break;
		
		case 31:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 350, 16, 36, 1);
			break;
		
		case 32:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 353, 16, 36, 1);
			break;
		
		case 33:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 404, 16, 36, 1);
			break;
		
		case 35:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 352, 16, 36, 1);
			break;
		
		case 36:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 491, 16, 36, 1);
			break;
		
		case 37:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 3, 347, 18, 36, 1);
			break;
		
		case 40:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 491, 8, 18, 0);
			break;
		
		case 41:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 3, 491, 8, 18, 0);
			break;
		
		case 42:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 2, 491, 16, 36, 1);
			break;
		
		case 45:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 350, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 46:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 353, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 47:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 347, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 48:
			scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 1, 404, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 50:
			scr_textsetup_ch1(scr_84_get_font_ch1("dotumche"), 0, x, y, 33, 0, 1, 356, 9, 20, 0);
			break;
		
		case 51:
			if (global.lang == "ja")
				scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 14, 356, 16, 36, 1);
			else
				scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 10, 356, 16, 36, 1);
			
			break;
		
		case 52:
			if (global.lang == "ja")
				scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 6, 356, 16, 36, 1);
			else
				scr_textsetup_ch1(scr_84_get_font_ch1("mainbig"), 16777215, x, y, 33, 0, 4, 356, 16, 36, 1);
			
			break;
		
		case 53:
			scr_textsetup_ch1(scr_84_get_font_ch1("dotumche"), 0, x, y, 33, 0, 1, 347, 9, 20, 0);
			break;
		
		case 54:
			scr_textsetup_ch1(scr_84_get_font_ch1("dotumche"), 0, x, y, 33, 0, 2, 347, 9, 20, 0);
			break;
		
		case 55:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 1, 351, 8, 18, 0);
			break;
		
		case 60:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 8, 491, 8, 18, 0);
			break;
		
		case 666:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 4, 491, 12, 20, 2);
			break;
		
		case 667:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 2, 491, 12, 20, 2);
			break;
		
		case 999:
			scr_textsetup_ch1(scr_84_get_font_ch1("main"), 16777215, x, y, 33, 0, 4, 488, 8, 18, 3);
			break;
		
		default:
			font_set = 0;
			break;
	}
	
	if (font_set && global.lang == "ja") {
		if (myfont == 10) {
			hspace = ((hspace * 26) / 16) + 1;
			
			if (vspace == 32)
				vspace = 36;
		} else if (myfont == 8) {
			hspace = ((hspace * 13) / 8) + 1;
		} else if (myfont == 6) {
			textscale = 0.5;
			hspace = ((hspace * 13) / 8) + 3;
		} else if (myfont == 12) {
			hspace = ((hspace * 13) / 8) + 1;
		} else if (myfont == 7) {
			hspace = ((hspace * 26) / 16) + 1;
		} else if (myfont == 9) {
			hspace = ((hspace * 13) / 8) + 1;
		}
		
		vspace += extra_ja_vspace;
	}
}
