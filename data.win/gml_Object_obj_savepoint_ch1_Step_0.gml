if (myinteract == 3) {
	if (instance_exists(mydialoguer) == false) {
		instance_create_ch1(0, 0, obj_savemenu_ch1);
		myinteract = 0;
	}
}
