scr_enemy_object_init();

with (obj_battlecontroller)
	cantspare[0] = 1;

hpprev = 0;
unleash_hp = 3000;
unleash_hpmax = unleash_hp;
light_radius = 48;
deunleash = false;
rumble = false;
rumbletimer = 0;
setbattlemsg = false;
phase6turn = 1;
recruitcount = 5;
talkmax = 90;
image_speed = 0.25;
animsiner = 0;
idlesprite = spr_titan_spawn_idle;
hurtsprite = spr_titan_spawn_idle;
sparedsprite = spr_titan_spawn_idle;
custom_draw_example = 0;
postenemyturnevent = 1;
drawstate = "idle";
drawstatetimer = 0;
starshootcon = 0;
starshoottimer = 0;
dualhealcon = 0;
dealhealtimer = 0;
finalunleashphasedone = false;
tensionscaling = 1;
turnswithoutunleash = 0;
justusedunleash = false;
redsiner = 0;
unleashcount = 0;
checkcount = 0;
loopedphase6 = 0;
juststoppedbeingunleashed = false;
balloonorder = 0;
ballooncon = 0;
balloonend = 1;
talked = 0;
talktimer = 0;
talkedcon = 0;
ralseitalks = 0;
susietalks = 0;
defense_timer = 0;
undefense_timer = 6;
first_barrage = true;
attack_chooser = 6;
handattackhardcon = 0;

with (obj_battleback)
	instance_destroy();

sactcount = 0;
ractcount = 0;
brighten = 0;
phase = 1;
phaseturn = 1;
myattackchoice = 0;
difficulty = 0;
unleashed = false;
chargecon = 0;
chargetimer = 0;
chargettimermax = 15;
redflashtimer = 0;
greenflashtimer = 0;
darkalpha = 0;
darktimer = 0;
chargeshakex = 0;
chargeshakexsign = 1;
rotation = 0;
spd = 0;
maxspd = 3;
temp_platform_color = make_color_rgb(0, 0, 103);

if (room == room_battletest)
	instance_create(x, y, obj_titan_platform);

instance_create(x, y, obj_titan_fg_draw);
endingcon = 0;
endingtimer = 0;
drawstate = "idle";
drawstatetimer = 6;
hurttimer2 = 0;
dualbusterenabled = false;
dualbusterused = false;
afterdualbusterused = false;
susiesideaenabled = false;
forcehitralsei = 0;
gerson = instance_create_depth(camerax() - 116, cameray() + 200, depth - 10, obj_titan_gerson_marker);
gerson.sprite_index = spr_gerson_pose;
gerson.image_speed = 1/3;
gerson.image_xscale = 2;
gerson.image_yscale = 2;
gerson.image_speed = 0;
gersoncastanim = false;
feathercon = 0;
feathertimer = 0;
slowdowncon = 0;
slowdowntimer = 0;
pre_rumble = false;
hurt_index = 0;
hurttimer = 0;
racttimer = 0;
newoldmanactmsg = false;
newsusieactmsg = false;
camerastartx = camerax();
camerastarty = cameray();
distort_effect = -4;
rumble_sound = -4;
shakepow = 2;
rumbler = 3;
bg_fade = -4;
phase8attack = false;

with (obj_mainchara)
	cutscene = 1;

dualhealcount = 0;
oldmancandycon = 0;
oldmancandytimer = 0;
unleashmultiplier = 1;
unleashmultiplierturn = 0;
snake_spd = 20;
snake_acc = 1200;

if (i_ex(obj_titan_enemy_actor)) {
	siner = obj_titan_enemy_actor.siner;
	
	with (obj_titan_enemy_actor)
		instance_destroy();
}

newact_str = stringsetloc("* Your soul is shining... a new ACT appeared!", "obj_titan_enemy_slash_Create_0_gml_163_0");
_battlemsg1b = stringsetloc("*\\EE ATTACK!! Its DEFENSE is down!!", "obj_titan_enemy_slash_Other_10_gml_5_0");
_battlemsg2 = stringsetloc("*\\EF \\cRAttack\\cW! This is our chance!!", "obj_titan_enemy_slash_Other_10_gml_6_0");
