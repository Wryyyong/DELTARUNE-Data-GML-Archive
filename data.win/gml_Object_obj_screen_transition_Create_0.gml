spr_aftereffect = -4;
fadeout = 1;
xscale = 1;
yscale = 1;
yy = y;
_active = false;
_parent = -4;
_target_chapter = -1;
_timer = 0;
_callback = -4;

init = function(arg0, arg1) {
	_parent = arg0;
	_target_chapter = arg1;
	depth = -100;
};

start = function(arg0) {
	_active = true;
	_callback = arg0;
};
