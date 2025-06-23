function instance_create_ch1(arg0, arg1, arg2) {
	var myDepth = object_get_depth_ch1(arg2);
	return instance_create_depth(arg0, arg1, myDepth, arg2);
}
