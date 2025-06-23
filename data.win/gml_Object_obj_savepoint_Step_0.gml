if (myinteract == 3) {
	if (instance_exists(mydialoguer) == 0) {
		instance_create(0, 0, obj_savemenu);
		myinteract = 0;
	}
}
