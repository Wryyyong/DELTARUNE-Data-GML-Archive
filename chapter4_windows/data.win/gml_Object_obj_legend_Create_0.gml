if (scr_is_switch_os())
	instance_create_depth(0, 0, 0, obj_switchAsyncHelper);

global.currentsong[0] = snd_init("legend_altered.ogg");
snd_pitch(global.currentsong[0], 0.95);
global.currentsong[1] = mus_play(global.currentsong[0]);
contimer = 0;
ytimer = 0;
xtimer = 0;
yoff = 0;
xoff = 0;
con = 1;
fadecolor = c_black;
chunkfade = 0;
chunkamt = 1;
border = 1;
pic = spr_introimage0_blu;
fadespeed = 0.02;
global.flag[6] = 1;
textimer = 0;
ingame = 0;

if (global.plot == 20)
	ingame = 1;

skipped = 0;
skiptimer = 0;
u_texture = shader_get_sampler_index(shd_prophecy_legend, "prophecy_tex");
texture_prophecy = sprite_get_texture(IMAGE_DEPTH_EXTEND_MONO_SEAMLESS_POW2, 0);
u_time = shader_get_uniform(shd_prophecy_legend, "time");
prophecy_alpha = 1.5;
skip_ready = false;
