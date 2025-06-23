function scr_makecaterpillar_ch1(arg0, arg1, arg2, arg3) {
	global.cinstance[arg3] = instance_create_ch1(arg0, arg1, obj_caterpillarchara_ch1);
	global.cinstance[arg3].target = 12 + (arg3 * 12);
	
	if (arg2 == 3) {
		with (global.cinstance[arg3]) {
			usprite = spr_ralseiu_ch1;
			dsprite = spr_ralseid_ch1;
			rsprite = spr_ralseir_ch1;
			lsprite = spr_ralseil_ch1;
		}
	}
	
	return global.cinstance[arg3];
}
