function scr_texttype() {
	var font_set = true;
	var extra_ja_vspace = 0;
	textscale = 1;
	
	switch (global.typer) {
		case 0:
			font_set = false;
			break;
		
		case 1:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 151, 8, 18, 0);
			break;
		
		case 2:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 419, 8, 18, 0);
			break;
		
		case 3:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 151, 8, 18, 1);
			break;
		
		case 4:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 151, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 5:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 151, 8, 18, 0);
			break;
		
		case 6:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 151, 16, 36, 1);
			break;
		
		case 7:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 182, 8, 18, 0);
			break;
		
		case 8:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 182, 8, 18, 0);
			break;
		
		case 10:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 174, 8, 18, 0);
			break;
		
		case 11:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 174, 8, 18, 0);
			break;
		
		case 12:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 175, 8, 18, 0);
			break;
		
		case 13:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 176, 8, 18, 0);
			break;
		
		case 14:
			scr_textsetup(scr_84_get_font("comicsans"), 16777215, x, y, 33, 0, 1, 172, 8, 18, 0);
			break;
		
		case 15:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 151, 8, 18, 0);
			break;
		
		case 16:
			font_set = false;
			break;
		
		case 17:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 173, 8, 18, 0);
			break;
		
		case 18:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 170, 8, 18, 0);
			break;
		
		case 19:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 151, 8, 18, 0);
			break;
		
		case 20:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 181, 8, 18, 0);
			break;
		
		case 21:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 181, 8, 18, 0);
			break;
		
		case 22:
			scr_textsetup(scr_84_get_font("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 181, 6, 18, 0);
			break;
		
		case 23:
			scr_textsetup(scr_84_get_font("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 175, 6, 18, 0);
			break;
		
		case 30:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 174, 16, 36, 1);
			break;
		
		case 31:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 177, 16, 36, 1);
			break;
		
		case 32:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 180, 16, 36, 1);
			break;
		
		case 33:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 266, 16, 36, 1);
			break;
		
		case 35:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 179, 16, 36, 1);
			break;
		
		case 36:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 419, 16, 36, 1);
			break;
		
		case 37:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 3, 174, 18, 36, 1);
			break;
		
		case 40:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 419, 8, 18, 0);
			break;
		
		case 41:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 3, 419, 8, 18, 0);
			break;
		
		case 42:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 2, 419, 16, 36, 1);
			break;
		
		case 45:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 177, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 46:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 180, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 47:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 174, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 48:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 266, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 50:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 151, 9, 20, 0);
			break;
		
		case 51:
			var rate = langopt(10, 14);
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, rate, 151, 16, 36, 1);
			break;
		
		case 52:
			var rate = langopt(6, 4);
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, rate, 151, 16, 36, 1);
			break;
		
		case 53:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 174, 9, 20, 0);
			break;
		
		case 54:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 2, 174, 9, 20, 0);
			break;
		
		case 55:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 178, 8, 18, 0);
			break;
		
		case 56:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 175, 16, 36, 1);
			break;
		
		case 57:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 176, 16, 36, 1);
			break;
		
		case 58:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 92, 16, 36, 1);
			break;
		
		case 59:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 175, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 60:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 177, 12, 20, 0);
			break;
		
		case 61:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 174, 12, 20, 0);
			break;
		
		case 62:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 183, 16, 36, 1);
			break;
		
		case 63:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 175, 8, 18, 0);
			break;
		
		case 64:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 1, 2, 175, 8, 18, 0);
			break;
		
		case 65:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 186, 16, 36, 1);
			break;
		
		case 66:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 184, 16, 36, 1);
			break;
		
		case 67:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 185, 16, 36, 1);
			break;
		
		case 68:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 184, 9, 20, 0);
			break;
		
		case 69:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 176, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 70:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 92, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 71:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 92, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 72:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 185, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 74:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 177, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 75:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 174, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 76:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 175, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 77:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 176, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		
		case 78:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 36, 0, 1, 151, 16, 36, 1);
			break;
		
		case 79:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 2, 174, 18, 36, 1);
			break;
		
		case 80:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 419, 8, 18, 0);
			break;
		
		case 81:
			scr_textsetup(scr_84_get_font("dotumche"), 16777215, x, y, 33, 0, 1, 419, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 82:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 560, 16, 36, 1);
			break;
		
		case 83:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 568, 16, 36, 1);
			break;
		
		case 84:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 62, 16, 36, 1);
			break;
		
		case 85:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 82, 16, 36, 1);
			break;
		
		case 86:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 82, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 87:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 138, 8, 18, 0);
			break;
		
		case 88:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 568, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		
		case 666:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 419, 12, 20, 2);
			break;
		
		case 667:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 419, 12, 20, 2);
			break;
		
		case 999:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 416, 8, 18, 3);
			break;
		
		case 100:
			scr_textsetup(scr_84_get_font("8bit"), 16777215, x, y, 22, 0, 1, 151, 16, 20, 0);
			break;
		
		default:
			font_set = false;
			break;
	}
	
	if (font_set && global.lang == "ja") {
		if (myfont == 16) {
			hspace = ((hspace * 26) / 16) + 1;
			
			if (vspace == 32)
				vspace = 36;
		} else if (myfont == 13) {
			hspace = ((hspace * 13) / 8) + 1;
		} else if (myfont == 11) {
			textscale = 0.5;
			hspace = ((hspace * 13) / 8) + 3;
		} else if (myfont == 15) {
			textscale = 0.5;
			hspace = ((hspace * 13) / 8) + 1;
		} else if (myfont == 12) {
			hspace = ((hspace * 26) / 16) + 1;
		} else if (myfont == 14) {
			hspace = ((hspace * 13) / 8) + 1;
		}
		
		vspace += extra_ja_vspace;
	}
}
