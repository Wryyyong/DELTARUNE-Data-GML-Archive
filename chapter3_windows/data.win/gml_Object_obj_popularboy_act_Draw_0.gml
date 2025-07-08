if (timer < 2)
	exit;

var alphaset = 0;

if (timer < 10)
	alphaset = lerp(0, 1, timer / 10);
else
	alphaset = 1;

draw_sprite_ext(spr_tenna_popularboy_spotlight, 0, ralseix + lengthdir_x(spotlight1_len, spotlight1_angle), ralseiy + lengthdir_y(spotlight1_len, spotlight1_angle), 2, 2, 0, c_white, 0.2 * alphaset);
draw_sprite_ext(spr_tenna_popularboy_spotlight, 1, ralseix + lengthdir_x(spotlight1_len, spotlight1_angle), ralseiy + lengthdir_y(spotlight1_len, spotlight1_angle), 2, 2, 0, c_white, 0.2 * alphaset);
draw_sprite_ext(spr_tenna_popularboy_spotlight, 0, ralseix + lengthdir_x(spotlight2_len, spotlight2_angle), ralseiy + lengthdir_y(spotlight2_len, spotlight2_angle), 2, 2, 0, c_white, 0.2 * alphaset);
draw_sprite_ext(spr_tenna_popularboy_spotlight, 1, ralseix + lengthdir_x(spotlight2_len, spotlight2_angle), ralseiy + lengthdir_y(spotlight2_len, spotlight2_angle), 2, 2, 0, c_white, 0.2 * alphaset);
