__returnvalue = 0;

if (argument1 == 0) {
	if (gamepad_axis_value(argument0, 1) <= -axis_value)
		__returnvalue = 1;
}

if (argument1 == 1) {
	if (gamepad_axis_value(argument0, 0) >= axis_value)
		__returnvalue = 1;
}

if (argument1 == 2) {
	if (gamepad_axis_value(argument0, 1) >= axis_value)
		__returnvalue = 1;
}

if (argument1 == 3) {
	if (gamepad_axis_value(argument0, 0) <= -axis_value)
		__returnvalue = 1;
}

return __returnvalue;
