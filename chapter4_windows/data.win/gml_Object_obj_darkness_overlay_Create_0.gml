darkness_surf = -4;
dim_surf = -4;
ambient_surf = -4;
active = true;
depth = 50000;
castShadow = true;
border_state = 0;
max_darkness = 1;
min_darkness = 0.5;
mem_darkness = -1;
surf = -1;
spr_battleborder = -1;
outline_style = 1;
outline_default = 8421504;
darkfight = false;
draw_silhouettes = true;
fade_in = 0.75;
draw_all_solids = false;
updated_this_frame = false;
faded = false;
auto_depth = true;
box_init = false;
highlightalpha = 1;

if (!variable_global_exists("drawdimmerlight"))
	global.drawdimmerlight = false;
