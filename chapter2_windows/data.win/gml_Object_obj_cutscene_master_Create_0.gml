waiting = 0;
cs_wait_timer = 0;
cs_wait_amount = 0;
cs_wait_dialogue = 0;
cs_wait_custom = 0;
cs_wait_box = -1;
mydialoguer = 438438943;
kill_actors = 0;
loadedState = 0;
instant = 0;
breakme = 0;
current_command = 0;
maximum_command = 1;
master_object = 9999999;
msgside = -1;
zurasu = 0;
mysound = -1;
initialized = 0;
var inittype = 0;

with (obj_controller_dininghall)
	inittype = 1;

with (obj_ch2_scene19a)
	inittype = 1;

with (obj_ch2_scene19b)
	inittype = 1;

with (obj_ch2_scene19c)
	inittype = 1;

actor_selected = "noone";
actor_selected_id = 99999999;

if (inittype == 0) {
	for (i = 0; i < 20; i++) {
		actor_id[i] = 99999999;
		actor_name[i] = "noone";
	}
	
	for (i = 0; i < 10; i++)
		save_object[i] = 99999999;
	
	scr_cutscene_master_commands_initialize();
}

if (inittype == 1) {
	actor_id = array_create(20, 99999999);
	actor_name = array_create(20, "noone");
	save_object = array_create(10, 99999999);
	command = array_create(800, "terminate");
	command_actor = array_create(800, 99999999);
	command_arg1 = array_create(800);
	command_arg2 = array_create(800);
	command_arg3 = array_create(800);
	command_arg4 = array_create(800);
	command_arg5 = array_create(800);
	command_arg6 = array_create(800);
	current_command = 0;
	maximum_command = 1;
}

terminate_this_frame = 0;
