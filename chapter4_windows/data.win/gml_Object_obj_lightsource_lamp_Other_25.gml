var store_surf = surface_get_target();

if (!surface_exists(surf))
	surf = surface_create(640, 480);

surface_reset_target();
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
var ex = offset > 15;
var skew = image_angle - 270;
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_blend_mode(bm_normal);
x1 = screenx() + lengthdir_x(15, image_angle + 15) + lengthdir_x(3 + ex, image_angle + 90);
y1 = screeny() + lengthdir_y(15, image_angle + 15) + lengthdir_y(3 + ex, image_angle + 90);
x2 = screenx() + lengthdir_x(15, image_angle - 15) + lengthdir_x(4 + ex, image_angle - 90);
y2 = screeny() + lengthdir_y(15, image_angle - 15) + lengthdir_y(4 + ex, image_angle - 90);
x3 = screenx() + lengthdir_x(400, image_angle - offset);
y3 = screeny() + lengthdir_y(400, image_angle - offset);
x4 = screenx() + lengthdir_x(400, image_angle + offset);
y4 = screeny() + lengthdir_y(400, image_angle + offset);
d_triangle(x1, y1, x3, y3, x4, y4, false);
d_triangle(x2, y2, x1, y1, x3, y3, false);
draw_set_blend_mode(bm_subtract);
ossafe_fill_rectangle(screenx() + 12 + ex, screeny() + 41 + ex, screenx() + 240, screeny() + 152, false);
ossafe_fill_rectangle(screenx() + 25 + ex, screeny() + 141 + ex, screenx() + 240, screeny() + 240, false);
ossafe_fill_rectangle(screenx() - 22 - ex, screeny() + 141 + ex, screenx() - 100, screeny() + 240, false);
ossafe_fill_rectangle(screenx() - 10 - ex, screeny() + 41 + ex, screenx() - 240, screeny() + 152, false);
d_triangle(screenx() + 10 + ex, screeny() + 153 + ex, screenx() + 24 + (3 * ex) + skew, screeny() + 270, screenx() + 28 + ex, screeny() + 152 + ex, false);
d_triangle(screenx() - 10 - ex, screeny() + 153 + ex, (screenx() - 22 - (3 * ex)) + skew, screeny() + 270, screenx() - 28 - ex, screeny() + 152 + ex, false);
draw_set_alpha(1);
draw_set_color(c_white);
surface_reset_target();
surface_set_target(store_surf);
draw_surface(surf, 0, 0);
