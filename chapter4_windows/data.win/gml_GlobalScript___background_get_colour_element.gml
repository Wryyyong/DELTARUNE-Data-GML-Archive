function __background_get_colour_element() {
	var __nearestdepth = -15000;
	var __farthestdepth = 15999;
	var __depthinc = 100;
	var __result;
	__result[0] = -1;
	__result[1] = -1;
	var __colstring = "Compatibility_Colour";
	var __layerlist = layer_get_all();
	var __layerlistlength = array_length_1d(__layerlist);
	var __layerid = -1;
	var __isforeground = false;
	
	for (var __i = 0; __i < __layerlistlength; __i++) {
		var __layername = layer_get_name(__layerlist[__i]);
		
		if (string_pos(__colstring, __layername) > 0) {
			__layerid = __layerlist[__i];
			break;
		}
	}
	
	if (__layerid != -1) {
		var __els = layer_get_all_elements(__layerid);
		var __elslength = array_length_1d(__els);
		
		for (var __i = 0; __i < __elslength; __i++) {
			if (layer_get_element_type(__els[__i]) == 1) {
				__result[0] = __els[__i];
				__result[1] = __layerid;
			}
		}
	} else {
		var __newback = __background_set_element(-1, false, false, -1, 0, 0, true, true, 1, 1, true, 0, 0, 0, 1);
		__result[0] = __newback[0];
		__result[1] = __newback[1];
	}
	
	return __result;
}
