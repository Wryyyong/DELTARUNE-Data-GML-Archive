global.cinstance[argument3] = instance_create(argument0, argument1, obj_caterpillarchara);
global.cinstance[argument3].target = 12 + (argument3 * 12);

if (argument2 == 3) {
	with (global.cinstance[argument3]) {
		usprite = spr_ralseiu;
		dsprite = spr_ralseid;
		rsprite = spr_ralseir;
		lsprite = spr_ralseil;
	}
}

return global.cinstance[argument3];
