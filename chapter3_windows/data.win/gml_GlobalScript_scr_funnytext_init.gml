function scr_funnytext_init() {
	global.writerobj[argument0] = 1531;
	global.writerobjx[argument0] = argument1;
	global.writerobjy[argument0] = argument2;
	global.writerimg[argument0] = argument3;
	global.writerobjsettinga[argument0] = argument4;
	global.writerobjsettingb[argument0] = argument5;
}

function scr_funnytext_init_sounds() {
	global.funnytext_sounds = [scr_funnytext_new_sound(481, [2916]), scr_funnytext_new_sound(13, [1272, 2693, 3886]), scr_funnytext_new_sound(22, [3699, 4234]), scr_funnytext_new_sound(96, [4485, 4474, 4013, 2602]), scr_funnytext_new_sound(328, [1223]), scr_funnytext_new_sound(299, [244]), scr_funnytext_new_sound(498, [1087, 883]), scr_funnytext_new_sound(50, [2623]), scr_funnytext_new_sound(320, [3984]), scr_funnytext_new_sound(6, [2494]), scr_funnytext_new_sound(84, [1700, 3803, 3055, 4462, 3603, 2914, 4657, 171]), scr_funnytext_new_sound(99, [3550]), scr_funnytext_new_sound(510, [333]), scr_funnytext_new_sound(76, [4037, 127]), scr_funnytext_new_sound(66, [4791, 3437, 3575]), scr_funnytext_new_sound(343, [1724, 700]), scr_funnytext_new_sound(163, [1817]), scr_funnytext_new_sound(144, [766]), scr_funnytext_new_sound(205, [4470])];
}

function scr_funnytext_get_sound(arg0) {
	if (!variable_global_exists("funnytext_sounds"))
		scr_funnytext_init_sounds();
	
	var sound_file = -4;
	
	for (var i = 0; i < array_length(global.funnytext_sounds); i++) {
		var sprite_list = global.funnytext_sounds[i][1];
		
		for (var j = 0; j < array_length(sprite_list); j++) {
			var sprite = scr_84_get_sprite(sprite_list[j]);
			
			if (arg0 != sprite)
				continue;
			
			sound_file = global.funnytext_sounds[i][0];
			break;
		}
		
		if (sound_file != -4)
			break;
	}
	
	return sound_file;
}

function scr_funnytext_new_sound(arg0, arg1) {
	var sound_file = arg0;
	var sprite_list = [];
	
	for (var i = 0; i < array_length(arg1); i++)
		sprite_list[array_length(sprite_list)] = sprite_get_name(arg1[i]);
	
	var funnytext_sound = [];
	funnytext_sound[0] = sound_file;
	funnytext_sound[1] = sprite_list;
	return funnytext_sound;
}
