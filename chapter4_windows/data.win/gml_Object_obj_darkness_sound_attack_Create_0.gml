scr_bullet_init();
pattern[0] = "64862";
timing[0] = "88866";
pattern[1] = "846286";
timing[1] = "888611";
pattern[2] = "24648";
timing[2] = "66668";
pattern[3] = "268684";
timing[3] = "181818";
length = 0;
timer = 0;
index = 0;
init = false;
obj_growtangle.sprite_index = spr_darkness_sound_board;
board_style = 0;
delay = 6;
audio_listener_position(obj_growtangle.x, obj_growtangle.y, 0);
audio_listener_orientation(0, 0, 1000, 0, -1, 0);
audio_falloff_set_model(audio_falloff_linear_distance);
heartlight = -4;
lightsource = -4;

if (room == room_bullettest)
	darkness = instance_create(x, y, obj_darkness_overlay);
