sprite_index = choose(spr_house_placed_effect, spr_dust2);
image_speed = 0.5;
image_xscale = random_range(0.9, 1) * choose(-1, 1);
image_yscale = image_xscale * choose(-1, 1);
direction = 90 + random_range(-45, 15);
speed = random_range(0.1, 1.5);
image_alpha = random(0.9) + 0.1;
scalerX = random(0.03) * image_xscale;
scalerY = random(0.03) * image_yscale;
depth = -1000;
image_index = 1;
index_speed = 0.5;
