hp = 1;
shadow = instance_create(x, y, obj_marker);
shadow.sprite_index = spr_susiezilla_shadow;
shadow.visible = false;
shadow.depth = depth + 1000;
shadow.image_xscale /= 2;
hurtCon = 0;
shootcon = 0;
shoottimer = 0;
image_xscale = 1;
image_yscale = 1;
height = 0;
fall_speed = 0;
recoil = 0;
recoilSpeed = 0;
recoilStart = 1;
bounce_count = 0;
fader = 0;
image_speed = 0;
reverse_image = 0;
flashtimer = 0;
redflashtimer = 0;
