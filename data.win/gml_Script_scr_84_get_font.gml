scr_84_init_localization();

if (!variable_global_exists("chemg_last_get_font"))
	global.chemg_last_get_font = "";

if (argument0 != global.chemg_last_get_font) {
	global.chemg_last_get_font = argument0;
	show_debug_message("get font: " + argument0);
}

return ds_map_find_value(global.font_map, argument0);
