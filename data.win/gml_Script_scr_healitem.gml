scr_heal(argument0, argument1);
healx = scr_charbox_x(argument0);
healtext = instance_create(healx + 70 + xx, yy + 430, obj_healwriter);
healtext.healamt = argument1;
