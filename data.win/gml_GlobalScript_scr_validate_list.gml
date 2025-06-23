function scr_validate_list(arg0, arg1) {
	var loaded_list = scr_ds_list_read(arg0);
	var is_valid = true;
	
	for (i = 0; i < ds_list_size(loaded_list); i += 1) {
		if (ds_list_find_value(loaded_list, i) != arg1[i]) {
			is_valid = false;
			break;
		}
	}
	
	ds_list_destroy(loaded_list);
	return is_valid;
}
