enum UnknownEnum {
	Value_2 = 2
}

_grid_lines = [];
_fade_in = false;
_alpha = 0;
var highest_chapter_obtained = 0;

for (var i = 0; i < UnknownEnum.Value_2; i++) {
	var chapter = i + 1;
	
	if (scr_fought_secret_boss_any_slot(chapter) && chapter > highest_chapter_obtained)
		highest_chapter_obtained = chapter;
}

for (var i = 0; i < highest_chapter_obtained; i++) {
	var chapter = i + 1;
	var grid_line = instance_create(x + (i * 20), y, obj_ui_grid_line);
	grid_line.init(chapter);
	grid_line.y -= 40;
	_grid_lines[array_length(_grid_lines)] = grid_line;
}

fade_in = function() {
	_fade_in = true;
};
