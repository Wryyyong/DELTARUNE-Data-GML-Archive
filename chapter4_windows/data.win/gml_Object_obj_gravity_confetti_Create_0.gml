image_blend = merge_colour(choose(c_yellow, c_lime, c_aqua, c_fuchsia), c_ltgray, 0.1);
xx = x;
friction = 0.025;
gravity = 0.1;
timer = 0;
timer_max = irandom_range(25, 45);
hh = 0;
xs = random_range(-1, 1);
ang = random(360);
spin = random_range(0.01, 0.1);
spin2 = random_range(2, 8) * choose(1, -1);
motion_set(random(360), random_range(2, 5));
