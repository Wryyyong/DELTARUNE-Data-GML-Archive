if (global.debug == 1) {
	if (i_ex(obj_debugProfiler)) {
		if (obj_debugProfiler.cutsceneshow == 1)
			debug_printline("Cutscene command #" + string(current_command) + " of " + string(maximum_command), 3);
	}
}
