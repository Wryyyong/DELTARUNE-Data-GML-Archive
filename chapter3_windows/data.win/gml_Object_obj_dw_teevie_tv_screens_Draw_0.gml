if (init == 0) {
	for (var i = 0; i < width; i++) {
		for (var j = 0; j < height; j++) {
			screensprite[i][j] = 4931;
			screencon[i][j] = 0;
			screentimer[i][j] = floor(random(100) - 100);
			screencolor[i][j] = 16777215;
			set_screen(i, j);
		}
	}
	
	init = 1;
}

timer++;
image_xscale = 2;
image_yscale = 2;
var tvheight = 40 * image_yscale;
var tvwidth = 40 * image_xscale;
var xx = x;
var yy = y;
draw_set_color(c_black);
ossafe_fill_rectangle(x, y, (x + (width * tvwidth)) - 1, (y + (height * tvheight)) - 1, false);
draw_set_color(c_white);
draw_set_blend_mode(bm_add);

for (var i = 0; i < width; i++) {
	for (var j = 0; j < height; j++) {
		if (mode == 0) {
			if (screencon[i][j] == 0) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 8) == 0) {
					if (screenimageoffset[i][j] == 0)
						screenimageoffset[i][j] = 1;
					else
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 1) {
				screentimer[i][j]++;
				
				if ((screentimer[i][j] % 2) == 0) {
					if (screenimageoffset[i][j] == 0)
						screenimageoffset[i][j] = 1;
					else
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 15) {
					screentimer[i][j] = -100 + floor(random(100));
					screencon[i][j] = 0;
					screensprite[i][j] = 4931;
					set_screen(i, j);
				}
			}
			
			if (screencon[i][j] == 2) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 4) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 4)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 3) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 4) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 11)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 4) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 4) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 4)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 5) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 4) == 0) {
					if (screenimageoffset[i][j] < 7)
						screenimageoffset[i][j]++;
				}
				
				if (screentimer[i][j] >= 20)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 6) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 4) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 4)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 7) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 6) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 2)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 8) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 6) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 2)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
			
			if (screencon[i][j] == 9) {
				screentimer[i][j]++;
				
				if ((abs(screentimer[i][j]) % 6) == 0) {
					screenimageoffset[i][j]++;
					
					if (screenimageoffset[i][j] == 2)
						screenimageoffset[i][j] = 0;
				}
				
				if (screentimer[i][j] >= 120)
					set_static(i, j);
			}
		}
		
		draw_sprite_ext(screensprite[i][j], screenimage[i][j] + screenimageoffset[i][j], x + (i * tvwidth), y + (j * tvheight), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}

draw_set_blend_mode(bm_normal);

for (var i = 0; i < width; i++) {
	for (var j = 0; j < height; j++) {
		if (drawborders)
			tvbasesprite = 3966;
		
		draw_sprite_ext(tvbasesprite, 4, x + (i * tvwidth), y + (j * tvheight), image_xscale, image_yscale, image_angle, c_white, image_alpha);
		draw_sprite_ext(tvbasesprite, 1, x + (i * tvwidth), y + (j * tvheight), image_xscale, image_yscale, image_angle, merge_color(tvbasecolor, screencolor[i][j], 0.6 + (sin((timer / 4) + i + j) * 0.1)), image_alpha);
		draw_sprite_ext(tvbasesprite, 2, x + (i * tvwidth), y + (j * tvheight), image_xscale, image_yscale, image_angle, merge_color(tvbasecolor, c_black, 0.5), image_alpha);
		draw_sprite_ext(tvbasesprite, 3, x + (i * tvwidth), y + (j * tvheight), image_xscale, image_yscale, image_angle, tvbasecolor, image_alpha);
		draw_sprite_ext(tvbasesprite, 5, x + (i * tvwidth), y + (j * tvheight), image_xscale, image_yscale, image_angle, c_white, image_alpha);
		
		if (drawborders) {
		}
	}
}
