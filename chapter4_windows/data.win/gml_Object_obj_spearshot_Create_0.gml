scr_bullet_init();
image_speed = 0;
fakespeed = 2;
len = 100;
grav = 0;
hp = 2;
maxhp = 2;
destroyonhit = 1;
special = 0;
giant = 0;
after = -1;
swingaround = false;
redhammer = 0;
redhammersiner = 0;
spearblockerx = 0;
spearblockery = 0;
redhammerfakeout = 0;
redhammersign = 0;
introlen = 50;
introdirection = 50;
timer = 0;
siner = 0;
testtimer = 0;
testcon = 0;
init = 0;
x1 = x;
y1 = y;
x2 = x;
y2 = y;
x3 = 0;
y3 = 0;
len2 = len;
dir2 = direction + 120;
savedir = 0;
fadespear = 0;
fadespeartimer = 0;
fadespeartimermax = 0;
fadespeardist = 80;
fadespeed = 8;
fadewaitmax = 10;
flashalpha = 0;
extra_angle = 0;
savedir = 0;
savex = x;
savey = y;
type = 0;
bouncespear = 0;
bouncespeartimer = 0;
bouncespearcon = 0;
bouncespeardir = 0;
frozentimer = 0;
hitstopbounce = 0;
fastbounce = 0;
slowbounce = 0;
shakeduration = 0;
shakeintensity = 2;
pink1 = make_color_rgb(255, 127, 184);
pink2 = make_color_rgb(255, 178, 212);
pink3 = make_color_rgb(255, 204, 226);
spinindex = 3;
longspear = 0;
longnotebeingheld = false;
longnotepieces = 30;
longnoteindex = 0;
pitchcount = 30;
breakshield = 0;
leadinsfx = 0;
willhitnextframe = false;

if (i_ex(obj_gerson_darkness_overlay))
	depth = obj_gerson_darkness_overlay.depth + 1;

hurtsquish = false;
gigashell = false;
