draw_set_color(c_black);
xx = camerax() - 72;
yy = cameray() + 88;

if (i_ex(obj_mainchara)) {
	if (obj_mainchara.x <= (camerax() + 320))
		xx += 320;
}

var yl = [106, 136, 166];

if (global.lang == "ja")
	yl = [104, 134, 170];

scr_darkbox_black(xx + 96, yy + 84, xx + 368, yy + 221);
draw_set_color(c_white);
scr_84_set_draw_font("mainbig");
draw_text(xx + 120, yy + yl[0], "$" + string(global.gold));
var roomstring = stringsetloc("HELD SPACE: ", "obj_moneydisplay_slash_Draw_0_gml_22_0");
var roomstring2 = stringsetloc("STORAGE SPACE: ", "obj_moneydisplay_slash_Draw_0_gml_23_0");
scr_itemcheck(0);
draw_text(xx + 120, yy + yl[1], roomstring + string(itemcount));
scr_itemcheck_pocket(0);
draw_text(xx + 120, yy + yl[2], roomstring2 + string(itemcount));

if (!d_ex())
	instance_destroy();
