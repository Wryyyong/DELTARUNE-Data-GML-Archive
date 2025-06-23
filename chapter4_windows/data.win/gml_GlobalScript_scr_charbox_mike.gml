function scr_charbox_mike() {
	for (c = 0; c < 4; c += 1) {
		if (havechar[c] == 1) {
			if (c == 0)
				charcolor = hpcolor[0];
			
			if (c == 1)
				charcolor = hpcolor[1];
			
			if (c == 2)
				charcolor = hpcolor[2];
			
			if (c == 3)
				charcolor = hpcolor[3];
			
			gc = global.charturn;
			xchunk = 0;
			
			if (charpos[c] == 0 && chartotal == 3)
				xchunk = 0;
			
			if (charpos[c] == 1 && chartotal == 3)
				xchunk = 213;
			
			if (charpos[c] == 2 && chartotal == 3)
				xchunk = 426;
			
			if (charpos[c] == 0 && chartotal == 2)
				xchunk = 108;
			
			if (charpos[c] == 1 && chartotal == 2)
				xchunk = 322;
			
			if (charpos[c] == 0 && chartotal == 1)
				xchunk = 213;
			
			if (gc == charpos[c]) {
				if (global.myfight == 0)
					scr_selectionmatrix(xx + xchunk, (480 - bp) + yy);
				
				if (mmy[c] > -32)
					mmy[c] -= 2;
				
				if (mmy[c] > -24)
					mmy[c] -= 4;
				
				if (mmy[c] > -16)
					mmy[c] -= 6;
				
				if (mmy[c] > -8)
					mmy[c] -= 8;
				
				if (mmy[c] < -32)
					mmy[c] = -64;
			} else if (mmy[c] < -14) {
				mmy[c] += 15;
			} else {
				mmy[c] = 0;
			}
			
			btc[0] = 0;
			btc[1] = 0;
			btc[2] = 0;
			btc[3] = 0;
			btc[4] = 0;
			
			if (gc == charpos[c])
				btc[global.bmenucoord[0][global.charturn]] = 1;
			
			if (gc == charpos[c])
				draw_set_color(charcolor);
			else
				draw_set_color(bcolor);
			
			if (global.charselect == charpos[c] || global.charselect == 3)
				draw_set_color(charcolor);
			
			ossafe_fill_rectangle(xx + xchunk, (480 - bp - 3) + yy + mmy[c], xx + xchunk + 212, ((480 - bp) + yy) - 2, false);
			draw_set_color(c_black);
			ossafe_fill_rectangle(xx + xchunk + 2, (480 - bp - 1) + yy + mmy[c], xx + xchunk + 210, (480 - bp) + yy + mmy[c] + 33, false);
			b_offset = 480;
			
			if (global.fighting == 0)
				b_offset = 430;
			
			if (global.fighting == 1)
				b_offset = 336;
			
			if (c == 0) {
				draw_sprite(spr_headkris, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnamekris"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			
			if (c == 1) {
				draw_sprite(spr_headsusie, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnamesusie"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			
			if (c == 2) {
				draw_sprite(spr_headralsei, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnameralsei"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			
			if (c == 3) {
				draw_sprite(spr_headnoelle, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnamenoelle"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			
			draw_sprite(spr_hpname, 0, xx + 109 + xchunk, bpoff + b_offset + 11 + mmy[c]);
			draw_set_color(c_white);
			draw_set_font(global.hpfont);
			
			if ((global.hp[c + 1] / global.maxhp[c + 1]) <= 0.25)
				draw_set_color(c_yellow);
			
			if (global.hp[c + 1] <= 0)
				draw_set_color(c_red);
			
			draw_set_halign(fa_right);
			draw_text(xx + 160 + xchunk, ((bpoff + b_offset) - 2) + mmy[c], string_hash_to_newline(global.hp[c + 1]));
			draw_sprite(spr_hpslash, 0, xx + 159 + xchunk, ((bpoff + b_offset) - 4) + mmy[c]);
			draw_text(xx + 205 + xchunk, ((bpoff + b_offset) - 2) + mmy[c], string_hash_to_newline(global.maxhp[c + 1]));
			draw_set_halign(fa_left);
			draw_set_color(c_maroon);
			ossafe_fill_rectangle(xx + 128 + xchunk, bpoff + b_offset + 11 + mmy[c], xx + 203 + xchunk, bpoff + b_offset + 19 + mmy[c], false);
			
			if (global.hp[c + 1] > 0 && global.maxhp[c + 1] > 0) {
				draw_set_color(charcolor);
				ossafe_fill_rectangle(xx + 128 + xchunk, bpoff + b_offset + 11 + mmy[c], xx + xchunk + 128 + ceil((global.hp[c + 1] / global.maxhp[c + 1]) * 75), bpoff + b_offset + 19 + mmy[c], false);
			}
		}
	}
}
