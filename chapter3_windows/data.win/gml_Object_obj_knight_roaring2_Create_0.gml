scr_darksize();
scr_bullet_init();
image_speed = 0;
jumpimages = false;
my_surface = -4;
ball_surface = -4;
star_surface = -4;
terrible_surface = -4;
darkness = 0;
ball_darkness = 0;
timer = 0;
fake_x = camerawidth() * 0.5;
fake_y = 24;
fake_alpha = 0;
rand_angle = irandom(360);
rand_dist = 320;
star_flicker = 2;
intensity = 1.5;
intensify = 1.5;
attack_timer = 0;
attack_timer_goal = -2;
attack_token = 1;
roaring_timer = 0;
line_timer = -1;
r = 128;
g = 128;
b = 128;
knight_sprite = 664;
knight_sprite_image = 0;
knight_sprite_speed = 0.5;
bobble_count = 0;
bobble_freq = 1;
bobble_amp = 4;
ball_counter = 0;
ball_speed = 2;
player_suck = 0.5;
hsv = 128;
hsv_switch = false;
sound = -4;
bullet_list = ds_list_create();
do_fake_screen = false;
fakey_screen = -4;
fakey_screen_2 = -4;
stop = false;
obj_heart.boundaryup = 160;
y -= 320;
obj_knight_enemy.chargeupcon = 2;
obj_knight_enemy.chargeuptimer = 0;
scr_script_delayed(scr_lerpvar, 20, "darkness", 0, 1, 32);
starcount_p1 = 0;
starcount_p2 = 0;
starvar = 0;
