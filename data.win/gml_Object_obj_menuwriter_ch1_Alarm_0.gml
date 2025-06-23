obj_menuwriter_ch1.testwho = who;

with (obj_menuwriter_ch1) {
	if (active == 1 && testwho == who)
		instance_destroy();
}

active = 1;
