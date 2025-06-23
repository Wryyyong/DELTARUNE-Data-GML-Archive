if (argument0 != -1) {
	if (button1_p() && talktimer > argument0)
		talktimer = talkmax;
	
	talktimer += 1;
	
	if (talktimer >= talkmax) {
		with (obj_writer)
			instance_destroy();
		
		global.mnfight = 2;
	}
}

if (argument0 == -1) {
	if (instance_exists(obj_writer) == 0)
		global.mnfight = 2;
}
