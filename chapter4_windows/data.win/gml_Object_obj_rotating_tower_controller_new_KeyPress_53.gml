if (!scr_debug())
	exit;

instance_destroy(obj_cloud_controller_new);
instance_create_depth(0, 370, depth, obj_cloud_controller_new);
