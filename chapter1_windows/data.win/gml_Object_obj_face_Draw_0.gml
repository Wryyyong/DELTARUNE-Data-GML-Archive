facechange -= 1;

if (nowface != global.fc)
	facechange = 3;

if (facechange <= 0) {
	if (global.fc == 1) {
		if (global.flag[29] == 0) {
			face = spr_face_s0;
			
			if (global.fe == 1)
				face = spr_face_s1;
			
			if (global.fe == 2)
				face = spr_face_s2;
			
			if (global.fe == 3)
				face = spr_face_s3;
			
			if (global.fe == 4)
				face = spr_face_s4;
			
			if (global.fe == 5)
				face = spr_face_s5;
			
			if (global.fe == 6)
				face = spr_face_s6;
			
			if (global.fe == 7)
				face = spr_face_s7;
			
			if (global.fe == 8)
				face = spr_face_s8;
			
			if (global.fe == 9)
				face = spr_face_s9;
			
			if (global.fe == 10)
				face = spr_face_sA;
			
			if (global.fe == 11)
				face = spr_face_sB;
			
			if (global.fe == 12)
				face = spr_face_sC;
			
			if (global.fe == 13)
				face = spr_face_sD;
			
			draw_sprite_ext(face, face_index, x - 5, y, f, f, 0, c_white, 1);
		} else {
			face = spr_face_susie_alt;
			face_index = global.fe;
			draw_sprite_ext(face, face_index, x - 5, y, f, f, 0, c_white, 1);
		}
	}
	
	if (global.fc == 2) {
		face = spr_face_r_dark;
		
		if (global.flag[30] == 1)
			face = spr_face_r_hood;
		
		if (global.flag[30] == 2)
			face = spr_face_r_nohat;
		
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 15, y - 10, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 3) {
		face = spr_face_n_matome;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 12, y - 10, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 4) {
		draw_sprite_ext(spr_face_tbody, 0, x - 7, y + 29, f, f, 0, c_white, 1);
		face = spr_face_t0;
		
		if (global.fe == 1)
			face = spr_face_t1;
		
		if (global.fe == 2)
			face = spr_face_t2;
		
		if (global.fe == 3)
			face = spr_face_t3;
		
		if (global.fe == 4)
			face = spr_face_t4;
		
		if (global.fe == 5)
			face = spr_face_t5;
		
		if (global.fe == 6)
			face = spr_face_t6;
		
		if (global.fe == 7)
			face = spr_face_t7;
		
		if (global.fe == 8)
			face = spr_face_t8;
		
		if (global.fe == 9)
			face = spr_face_t9;
		
		draw_sprite_ext(face, face_index, x, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 5) {
		face = spr_face_l0;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 15, y - 10, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 6) {
		face = spr_face_sans0;
		
		if (global.fe == 1)
			face = spr_face_sans1;
		
		if (global.fe == 2)
			face = spr_face_sans2;
		
		if (global.fe == 3)
			face = spr_face_sans3;
		
		if (global.fe == 4)
			face = spr_face_sans4;
		
		if (global.fe == 5)
			face = spr_face_sans5;
		
		draw_sprite_ext(face, face_index, x, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 9) {
		face = spr_face_undyne;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 10) {
		face = spr_face_asgore0;
		
		if (global.fe == 1)
			face = spr_face_asgore1;
		
		if (global.fe == 2)
			face = spr_face_asgore2;
		
		if (global.fe == 3)
			face = spr_face_asgore3;
		
		if (global.fe == 4)
			face = spr_face_asgore4;
		
		if (global.fe == 5)
			face = spr_face_asgore5;
		
		if (global.fe == 6)
			face = spr_face_asgore6;
		
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 11) {
		face = spr_alphysface;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 12) {
		face = spr_face_b0;
		
		if (global.fe == 1)
			face = spr_face_b1;
		
		if (global.fe == 2)
			face = spr_face_b2;
		
		if (global.fe == 3)
			face = spr_face_b3;
		
		if (global.fe == 4)
			face = spr_face_b4;
		
		if (global.fe == 5)
			face = spr_face_b5;
		
		if (global.fe == 6)
			face = spr_face_b1;
		
		if (global.fe == 7)
			face = spr_face_b1;
		
		if (global.fe == 8)
			face = spr_face_b1;
		
		if (global.fe == 9)
			face = spr_face_b1;
		
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 13) {
		face = spr_face_c0;
		
		if (global.fe == 1)
			face = spr_face_c1;
		
		if (global.fe == 2)
			face = spr_face_c2;
		
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 14) {
		face = spr_face_jock0;
		
		if (global.fe == 1)
			face = spr_face_jock1;
		
		if (global.fe == 1)
			face = spr_face_jock2;
		
		if (global.fe == 1)
			face = spr_face_jock3;
		
		if (global.fe == 1)
			face = spr_face_jock4;
		
		if (global.fe == 1)
			face = spr_face_jock5;
		
		if (global.fe == 1)
			face = spr_face_jock6;
		
		if (global.fe == 1)
			face = spr_face_jock7;
		
		if (global.fe == 1)
			face = spr_face_jock8;
		
		if (global.fe == 1)
			face = spr_face_jock9;
		
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 15) {
		face = spr_face_rudy;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 12, y - 10, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 16) {
		face = spr_face_catty;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 17) {
		face = spr_face_bratty;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 5, y + 2, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 18) {
		face = spr_face_rurus;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 10, y, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 19) {
		face = spr_face_burgerpants;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 5, y - 5, f, f, 0, c_white, 1);
	}
	
	if (global.fc == 20) {
		face = spr_face_king;
		face_index = global.fe;
		draw_sprite_ext(face, face_index, x - 5, y - 5, f, f, 0, c_white, 1);
	}
}

nowface = global.fc;
