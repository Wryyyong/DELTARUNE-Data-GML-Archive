enum UnknownEnum {
	Value_1 = 1,
	Value_2
}

function scr_init() {
}

function create_choice(arg0, arg1) constructor {
	choice_text = arg0;
	choice_value = arg1;
}

function get_chapter_confirm_sound(arg0) {
	switch (arg0) {
		case UnknownEnum.Value_1:
			return 1;
			break;
		
		case UnknownEnum.Value_2:
			return 0;
			break;
	}
}

function get_chapter_title(arg0) {
	switch (arg0) {
		case UnknownEnum.Value_1:
			return (global.lang == "en") ? "The Beginning" : "はじまり";
			break;
		
		case UnknownEnum.Value_2:
			return (global.lang == "en") ? "A Cyber's World" : "サイバーワールド";
			break;
		
		default:
			return "- -";
			break;
	}
}

function get_version() {
	var version = "v3";
	return version;
}
