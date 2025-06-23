init = false;
init_heart = false;
con = -1;
customcon = 0;
snd_free_all();
blackall = scr_dark_marker(-10, -10, spr_pixel_white);
blackall.image_xscale = 999;
blackall.image_yscale = 999;
blackall.depth = 100;
blackall.image_blend = c_black;
blackall.image_alpha = 1;
overlay = instance_create(0, 0, obj_noellehouse_basement_overlay);
overlay.depth = 3000;

with (overlay)
	set_alpha(0.5);

angel_marker = scr_marker(-100, -100, spr_noellehouse_basement_angel);

with (angel_marker)
	depth = 80000;

heart_marker = scr_marker(-100, -100, spr_heartsmall);

with (heart_marker)
	depth = 80010;

table_marker = scr_marker(-100, -100, spr_noellehouse_table_tray);
table_marker.visible = 0;
table_marker.depth = 80000;
snacktray_marker = scr_marker(460, 590, spr_noellehouse_platter);
snacktray_marker.depth = 93530;
angel_fall = false;
angel_fall_timer = 0;
angel_fall_direction = "";
noelle_shock = false;
shock_sprite = scr_marker(-100, -100, spr_noelle_susie_angel_shock);
shock_sprite.depth = 7000;
shock_sprite.visible = 0;
shock_sprite_timestamps = [330, 330, 330, 60, 60, 60, 100, 100, 100, 660, 330, 200, 200, 200, 200, 200, 200, 200, 200, 200, 200];
shock_anim_modifier = 30;
shock_anim_index = 0;
shock_anim_timer = 0;
angel_shake_marker = scr_marker(-100, -100, spr_noelle_susie_angel_table_hold_loop_isolate);
angel_shake = false;
angel_shake_timer = 0;
