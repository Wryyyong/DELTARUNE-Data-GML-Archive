function substr_ch1() {
	var str = argument[0];
	var pos = argument[1];
	
	if (pos < 0)
		pos = strlen_ch1(str) + 1 + pos;
	
	var len;
	
	if (argument_count == 2)
		len = (strlen_ch1(str) - pos) + 1;
	else
		len = argument[2];
	
	if (len > 0)
		return string_copy(str, pos, len);
	else
		return "";
}
