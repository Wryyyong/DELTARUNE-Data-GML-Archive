function scr_blconskip_ch1(arg0) {
	if (arg0 != -1) {
		if (button1_p_ch1() && talktimer > arg0)
			talktimer = talkmax;
		
		talktimer += 1;
		
		if (talktimer >= talkmax) {
			with (obj_writer_ch1)
				instance_destroy();
			
			global.mnfight = 2;
		}
	}
	
	if (arg0 == -1) {
		if (instance_exists(obj_writer_ch1) == false)
			global.mnfight = 2;
	}
}
