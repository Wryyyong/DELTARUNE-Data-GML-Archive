function scr_kana_check() {
	var kanafound = 0;
	var ___stringlength = string_length(argument0);
	
	for (var ___i = 1; ___i <= ___stringlength; ___i++) {
		if (ord(string_char_at(argument0, ___i)) >= 12352) {
			kanafound = 1;
			break;
		}
	}
	
	return kanafound;
}
