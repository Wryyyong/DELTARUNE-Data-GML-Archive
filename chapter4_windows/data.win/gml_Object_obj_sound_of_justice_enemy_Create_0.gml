global.flag[1569] = 1;
init = 0;
battleversion = 1;
scr_enemy_object_init();
global.invc = 0.5;
progress = 0;
image_speed = 0.16666666666666666;
recruitcount = 1;
talkmax = 90;
idlesprite = spr_statue_sound_of_justice;
hurtsprite = spr_statue_sound_of_justice;
sparedsprite = spr_statue_sound_of_justice;
hairindex = 0;
movesiner = 0;
attackpattern = 1;
difficulty = 0;
turn = 0;
phase = 1;
patternstate = 0;
rr = -1;
scr_spearpattern_reset();
attacktimer = 0;
attackcon = 0;
rtimer = 0;
talked = 0;
talkedcon = 0;
dodgetimer = 0;
turnframes = 0;
attackdebug = -1;
difficultydebug = -1;
musicdebug = 0;
songtime = 0;
songplaying = 1;
resumeinterval = 1.715;
diagonal_enabled = 0;
transformsfx = 0;
balloonorder = 0;
ballooncon = 0;
balloonend = 1;
talkedcon = 0;
susietalks = 0;
rudebusterhitcount = 0;
rudebusterhitcountmax = 1;
susiehitbyrudebustercount = 0;
susiehitbyrudebustercon = 0;
swingtimer = 0;
swingdown_ex = 0;
swingdown_multitelegraph = 0;
goldalpha = 0;
goldcon = 0;
hitbox_con = 0;
hitbox_timer = 0;
turns = 0;
endcon = 0;
endtimer = 0;
end_cutscene_version = 0;
frozentimer = 0;
fasterheart = false;
swingdownbeatspeed = 23;
savebattlecontrollerdepth = obj_battlecontroller.depth;
rudebusterflashcon = 0;
rudebusterflashtimer = 0;
gothitlastturn = 0;
beenhit = false;
introtalkcon = 0;
introballooncon = 0;
firstconversationhappened = 0;
nothitevent = false;
mercylaughcon = 0;
mercylaughtimer = 0;
mercylaughcount = 9;
spinxscale = 1;
spinspeed = 5;
saverudebusterstarcount = 9;
spintimer = 0;
spinindex = 0;
playmeatsoundcon = 0;
playmeatsoundtimer = 0;
endingcon = 0;
endingtimer = 0;
state14timer = 0;
state14con = 0;
phase = 1;
susiedown = false;
intermission1_con = 0;
intermission1_timer = 0;
susie_phase2_try_attack_con = 0;
susie_phase2_try_attack_timer = 0;
kris_phase2_try_attack_con = 0;
kris_phase2_try_attack_timer = 0;
krisattackcount = 0;
image_blend = c_black;
instance_create(0, 0, obj_gerson_darkness_overlay);

if (global.encounterno == 186) {
	phase = 2;
	turns = 4;
	attackpattern = 5;
	
	if (i_ex(obj_dw_churchb_nongerson))
		attackpattern = obj_dw_churchb_nongerson.attackpattern_save;
}

ralseimarker = instance_create(x, y, obj_marker);
bulletphaseend = false;
failsafe = false;
global.flag[1641] = global.tempflag[60];

if (global.tempflag[57] < 4 || global.flag[1641] > 4)
	failsafe = true;

if (room == room_battletest)
	failsafe = false;

with (obj_battleback)
	instance_destroy();

rippletimer = 0;
susieripple = 0;
lightupcon = 0;
lightalpha = 1.2;
introcon = 0;
introtimer = 0;
snd_stop(snd_strongwind_loop);
redflashcon = 0;
redflashtimer = 0;
growtangleredcon = 0;
growtangleredtimer = 0;
