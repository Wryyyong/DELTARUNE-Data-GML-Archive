if (myinteract == 3) {
	if (instance_exists(mydialoguer) == 0) {
		global.interact = 0;
		myinteract = 0;
		
		with (obj_mainchara)
			onebuffer = 3;
	}
}
