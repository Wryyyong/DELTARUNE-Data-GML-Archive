depth = 100000;
screen_alpha = 1;
screenwidth = view_wport[0] * 6;
screenheight = view_hport[0];
crttimer = 0;
crt_glitch = 0;
chromStrength = 0.25;
star_anim = 0;
star_anim_speed = 0.5;
bg_speed = 1;
bg_speed_y = 1;
bg_speed_max = 3;
bg_speed_y_max = 3;
screen_anim = 0;
screen_anim_speed = 0.2;
con = -1;
target_scale = 2;
screen_scale = 2;
logo_pos_y = 40;
target_logo_pos_y = 40;
tutorial_active = false;
tut_sprite = 4760;
tut_pos_x = camerax() + 32;
tut_pos_y = cameray() + 12;
tut_pos_y_offset = 40;
tut_xscale = 0;
tut_target_xscale = 0;
tut_yscale = 0;
tut_target_yscale = 0;
tut_anim = 0;
tut_anim_speed = 0.05;
tut_scaling_x = false;
tut_scaling_y = false;
tut_easetype = "out";
food_sprite = 628;
food_screen = false;
food_anim = 0;
food_timer = 0;
food_x_pos = [];

for (var i = 0; i < 3; i++)
	food_x_pos[i] = i * 1420;
