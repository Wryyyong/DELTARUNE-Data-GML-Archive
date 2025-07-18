scr_enemy_object_init();

if (scr_sideb_get_phase() < 2 && !instance_exists(obj_berdlyplug_enemy))
	instance_create(x + 42, y - 84, obj_berdlyplug_enemy);

with (obj_berdlyplug_enemy)
	depth = obj_queen_enemy.depth + 1;

talkmax = 90;
image_speed = 0.16666666666666666;
depth = obj_battlecontroller.depth - 1;
idlesprite = spr_queen_chair_1_old;
hurtsprite = spr_queen_chair_1_old;
sparedsprite = spr_queen_chair_1_old;
lastsearch = 0;
difficulty = 0;
difficultydebug = 0;
attackdebug = -1;
bufferattack = false;
whiteAcid = true;
shieldjustbroke = 0;
jp = 0;

if (global.lang == "ja")
	jp = 1;

turn = 0;
phaseturn = 0;
phase = 1;
finalphaseturns = 0;
usefinalattack = 0;
haveusedfinalattack = 0;
attackdone = 0;
wirescut = 0;
bardlymercy = 0;
shieldhp = 0;
shieldmaxhp = 0;
shieldacthp = 0;
shieldactmaxhp = 0;
throwX = 0;
targetmercy = 25;
aimact = 0;
intro = 0;
endcon = 0;
endtimer = 0;
defeat_cutscene_version = 0;
siner2 = 0;
shieldbrokecon = 0;
hurtcon = 0;
wineglasscon = 0;
drink = 0;
shield_damage_buffer = 0;
beatwine2nodamage = 0;
usewineattack = 0;
ultimateattackused = 0;
shieldsize = 7;
balloonorder = 0;
ballooncon = 0;
balloonend = 1;
talkedcon = 0;
ralseitalks = 0;
susietalks = 0;
susieinterrupts = 0;
init = 1;
drunk = 0;
drunkcount = 0;
shieldjustwentup = 0;
shieldjustwentdown = 0;
finalattackdialoguecon = 0;
krisflattercount = 0;
susieflattercount = 0;
ralseiflattercount = 0;
groupflattercount = 0;
waitnextactsusie = 0;
waitnextactralsei = 0;
changesimulorder = 0;
wintimer = 0;
extracon = 0;
extratimer = 0;
krismaxhp = global.maxhp[1];
susiemaxhp = global.maxhp[2];
ralseimaxhp = global.maxhp[3];
