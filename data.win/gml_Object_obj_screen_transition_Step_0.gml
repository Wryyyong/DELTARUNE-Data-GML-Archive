if (!_active)
	exit;

fadeout = lerp(fadeout, 0, 0.125);
xscale *= 0.95;
yscale *= 0.99;
yy *= 0.99;
_timer++;

if (_timer == 60)
	_callback(_target_chapter);
