x += xs;
y += ys;
xs *= 0.85;
ys *= 0.85;
image_xscale *= 0.85;
image_yscale *= 0.85;

if ((image_xscale + image_yscale) < 0.16)
	instance_destroy();

image_angle += 45;
image_alpha += 0.2;
