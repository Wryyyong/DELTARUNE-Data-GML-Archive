function scr_debug() {
	if (instance_exists(obj_debugcontroller))
		return obj_debugcontroller.debug;
}
