draw_set_color(#B5E61D);
draw_circle(x, y, radius, 0);
radius -= 0.25;

if (radius <= 0)
	instance_destroy();
