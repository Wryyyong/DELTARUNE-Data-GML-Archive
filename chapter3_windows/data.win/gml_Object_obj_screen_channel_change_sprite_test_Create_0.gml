depth = 49000;
strength = 20;
active = false;
screen_sprite = -4;
old_screen_sprite = -4;
screen_surf = -4;
old_screen_surf = -4;
siner = 0;
helix = false;
wrap_around = true;
timer = 0;
timer_dir = 0;
subtimer = 0;
lifetime = 7;
noise_sprite = 1322;
scan_x = 0;
scroll_speed = 1;
scroll_dir = randomsign();
infinite = false;
init = false;
scroll = false;
shader = true;
precise = true;
static_noise = -1;
active = false;
siner = 0;
multa = 20;
multb = 30;
altspeed = scroll_speed;
idle_sprite = 2163;
effect_sprite = 2599;
infinite_sprite = 1134;
image_speed = 0.5;
image_xscale = 2;
image_yscale = 2;
shader_check = 0;
draw_end = true;
channel_shader = 15;
sprite_uvs = sprite_get_uvs(noise_sprite, 0);
perlin_stage = shader_get_sampler_index(channel_shader, "perlin_texture_page");
manual = false;
silent = false;
shuffle = true;
is_finished = false;
alpha2 = 0;
lightemupcon = 0;
lightemuptimer = 0;
