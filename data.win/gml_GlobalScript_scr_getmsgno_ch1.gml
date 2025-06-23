function scr_getmsgno_ch1() {
	if (instance_exists(obj_writer_ch1))
		return obj_writer_ch1.msgno;
}
