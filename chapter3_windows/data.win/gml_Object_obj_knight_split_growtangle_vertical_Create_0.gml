image_blend = obj_growtangle.image_blend;
image_xscale = obj_growtangle.image_xscale;
image_yscale = obj_growtangle.image_yscale;
depth = obj_growtangle.depth + 100;
con = 0;
timer = 0;
distance = 0;
obj_growtangle.visible = false;
heart_y = 0;
sprite_index = obj_growtangle.sprite_index;
split_dist = 50;
slow = 4;
fast = 8;
child_bullet[0] = -4;
count = 0;
flame_index = 0;
marker[0] = instance_create(x + 2, y - 1, obj_marker);
marker[0].sprite_index = spr_rk_split_flame_big;
marker[0].image_speed = 0.5;
marker[0].image_xscale = 2;
marker[0].image_yscale = 2;
marker[0].image_angle = 180;
marker[0].image_blend = c_gray;
marker[0].depth = depth + 10;
marker[1] = instance_create(x, y + 2, obj_marker);
marker[1].sprite_index = spr_rk_split_flame_big;
marker[1].image_speed = 0.5;
marker[1].image_xscale = 2;
marker[1].image_yscale = 2;
marker[1].image_angle = 0;
marker[1].image_blend = c_gray;
marker[1].depth = depth + 10;
