enum UnknownEnum {
	Value_0,
	Value_1,
	Value_2,
	Value_3,
	Value_4,
	Value_5,
	Value_7 = 7
}

global.is_console = os_type == os_switch || os_type == os_ps4 || os_type == os_ps5;

if (!variable_global_exists("bgm") || !audio_exists(global.bgm))
	global.bgm = -4;

var _input = instance_create(0, 0, obj_input);
_input.init();
scr_init();
_current_state = UnknownEnum.Value_0;
_chapter_in_progress = 0;
_chapter_completed = 0;
_target_chapter = -1;
_restart_room = false;
_launch_data = scr_init_launch_parameters();

init = function() {
	var max_chapter = UnknownEnum.Value_7;
	var max_available_chapter = UnknownEnum.Value_2;
	_current_state = UnknownEnum.Value_1;
	
	for (var i = 1; i < max_chapter; i++) {
		var chapter = i;
		
		if (scr_chapter_save_file_exists(chapter) && !scr_completed_chapter_any_slot(chapter))
			_chapter_in_progress = chapter;
	}
	
	if (_chapter_in_progress > 0)
		_current_state = UnknownEnum.Value_2;
	
	for (var i = 1; i < max_chapter; i++) {
		var chapter = i;
		
		if (scr_completed_chapter_any_slot(chapter))
			_chapter_completed = chapter;
	}
	
	if (_chapter_completed > 0) {
		_current_state = UnknownEnum.Value_3;
		
		if (_chapter_completed >= max_available_chapter)
			_current_state = UnknownEnum.Value_4;
	}
	
	if (!is_original_launcher(_launch_data))
		_current_state = UnknownEnum.Value_4;
	
	change_state(_current_state);
};

change_state = function(arg0) {
	_current_state = arg0;
	
	switch (_current_state) {
		case UnknownEnum.Value_4:
			with (obj_screen_start)
				clean_up();
			
			start_bgm();
			create_select_screen();
			break;
		
		case UnknownEnum.Value_1:
			stop_bgm();
			create_start_screen();
			break;
		
		case UnknownEnum.Value_2:
			stop_bgm();
			create_continue_screen();
			break;
		
		case UnknownEnum.Value_3:
			stop_bgm();
			create_start_next_screen();
			break;
	}
};

create_start_screen = function() {
	var start_text = (global.lang == "en") ? "Would you like to start from Chapter 1?" : "Chapter 1から始めますか？";
	var yes_text = (global.lang == "en") ? "Yes" : "はい";
	var no_text = (global.lang == "en") ? "No" : "いいえ";
	var choices = [new create_choice(yes_text, UnknownEnum.Value_0), new create_choice(no_text, UnknownEnum.Value_1)];
	var choice_offset = (global.lang == "ja") ? -20 : 0;
	var start_screen = instance_create(0, 0, obj_screen_start);
	start_screen.init(id, start_text, choices, choice_offset);
	start_screen.fade_in();
};

create_continue_screen = function() {
	var continue_text = "Continue from Chapter " + string(_chapter_in_progress) + "?";
	
	if (global.lang == "ja")
		continue_text = "Chapter " + string(_chapter_in_progress) + "から続けますか？";
	
	var yes_text = (global.lang == "en") ? "Yes" : "はい";
	var no_text = (global.lang == "en") ? "No" : "いいえ";
	var choices = [new create_choice(yes_text, UnknownEnum.Value_0), new create_choice(no_text, UnknownEnum.Value_1)];
	var choice_offset = (global.lang == "ja") ? -20 : 0;
	var start_screen = instance_create(0, 0, obj_screen_start);
	start_screen.init(id, continue_text, choices, choice_offset);
	start_screen.fade_in();
};

create_start_next_screen = function() {
	var continue_text = "Chapter " + string(_chapter_completed) + " was completed.";
	
	if (global.lang == "ja")
		continue_text = "Chapter " + string(_chapter_completed) + "はクリア済みです。";
	
	var play_next_text = "Play Chapter " + string(_chapter_completed + 1);
	
	if (global.lang == "ja")
		play_next_text = "Chapter " + string(_chapter_completed + 1) + "をプレイ";
	
	var chapter_select_text = (global.lang == "en") ? "Chapter Select" : "チャプター選択";
	var choices = [new create_choice(play_next_text, UnknownEnum.Value_0), new create_choice(chapter_select_text, UnknownEnum.Value_1)];
	var start_screen = instance_create(0, 0, obj_screen_start);
	var choice_offset = (global.lang == "en") ? -70 : -100;
	start_screen.init(id, continue_text, choices, choice_offset);
	start_screen.fade_in();
};

create_select_screen = function() {
	var select_screen = instance_create(0, 0, obj_screen_select);
	select_screen.init(id);
	select_screen.fade_in();
};

trigger_event = function(arg0, arg1) {
	var event_name = arg0;
	var event_value = arg1;
	
	switch (_current_state) {
		case UnknownEnum.Value_0:
			if (arg0 == "init_complete")
				init();
			
			break;
		
		case UnknownEnum.Value_1:
			if (event_value == UnknownEnum.Value_0) {
				_target_chapter = UnknownEnum.Value_1;
				show_transition();
			} else {
				change_state(UnknownEnum.Value_4);
			}
			
			break;
		
		case UnknownEnum.Value_2:
			if (event_value == UnknownEnum.Value_0) {
				_target_chapter = _chapter_in_progress;
				show_transition();
			} else {
				change_state(UnknownEnum.Value_4);
			}
			
			break;
		
		case UnknownEnum.Value_3:
			if (event_value == UnknownEnum.Value_0) {
				_target_chapter = _chapter_completed + 1;
				show_transition();
			} else {
				change_state(UnknownEnum.Value_4);
			}
			
			break;
		
		case UnknownEnum.Value_4:
			if (event_name == "launch_game") {
				_target_chapter = event_value;
				show_transition();
			} else if (event_value == UnknownEnum.Value_4) {
				quit();
			} else if (event_value == UnknownEnum.Value_5) {
				toggle_language();
			}
			
			break;
	}
};

show_transition = function() {
	if (instance_exists(obj_screen_transition))
		exit;
	
	if (global.bgm != -4)
		audio_sound_gain(global.bgm, 0, 500);
	
	var sound = get_chapter_confirm_sound(_target_chapter);
	audio_play_sound(sound, 50, 0);
	var transition = instance_create(0, 0, obj_screen_transition);
	transition.init(id, _target_chapter);
	transition.start(launch_game);
};

launch_game = function(arg0) {
	audio_stop_all();
	var chapstring = string(_target_chapter);
	var parameters = get_chapter_switch_parameters();
	
	switch (os_type) {
		case os_windows:
			game_change("/chapter" + chapstring + "_windows", "-game data.win" + parameters);
			break;
		
		case os_switch:
			game_change("rom:/chapter" + chapstring + "_switch/", parameters);
			break;
		
		case os_ps4:
			game_change("", "-game /app0/games/chapter" + chapstring + "_ps4/game.win" + parameters);
			break;
		
		case os_ps5:
			game_change("", "-game /app0/games/chapter" + chapstring + "_ps5/game.win" + parameters);
			break;
		
		case os_macosx:
			game_change("chapter" + chapstring + "_mac", parameters);
			break;
	}
};

quit = function() {
	game_end();
};

toggle_language = function() {
	if (_restart_room)
		exit;
	
	_restart_room = true;
	var target_lang = (global.lang == "en") ? "ja" : "en";
	global.lang = target_lang;
	ossafe_ini_open("true_config.ini");
	ini_write_string("LANG", "LANG", global.lang);
	ossafe_ini_close();
	ossafe_savedata_save();
	
	if (!global.is_console)
		room_restart();
};

start_bgm = function() {
	if (global.bgm == -4 || !audio_is_playing(global.bgm))
		global.bgm = audio_play_sound(AUDIO_DRONE, 15, 1);
};

stop_bgm = function() {
	if (global.bgm != -4) {
		audio_stop_sound(global.bgm);
		global.bgm = -4;
	}
};

if (global.is_console) {
	var console_init = instance_create(0, 0, obj_init_console);
	console_init.init(id, _launch_data);
} else {
	var pc_init = instance_create(0, 0, obj_init_pc);
	pc_init.init(id, _launch_data);
}
