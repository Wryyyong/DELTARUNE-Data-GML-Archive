function snd_free_ch1(arg0) {
	if (instance_exists(obj_astream_ch1)) {
		_xstream = arg0;
		obj_astream_ch1.bstream = _xstream;
		
		with (obj_astream_ch1) {
			if (bstream == mystream)
				instance_destroy();
		}
	}
}
