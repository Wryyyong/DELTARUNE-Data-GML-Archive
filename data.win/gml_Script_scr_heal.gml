abovemaxhp = 0;
belowzero = 0;
hltarget = global.char[argument0];
_curhp = global.hp[hltarget];

if (global.hp[hltarget] <= 0)
	belowzero = 1;

if (global.hp[hltarget] > global.maxhp[hltarget])
	abovemaxhp = 1;

if (abovemaxhp == 0) {
	global.hp[hltarget] += argument1;
	
	if (global.hp[hltarget] > global.maxhp[hltarget])
		global.hp[hltarget] = global.maxhp[hltarget];
}

if (belowzero == 1 && global.hp[hltarget] >= 0) {
	if (global.hp[hltarget] < ceil(global.maxhp[hltarget] / 6))
		global.hp[hltarget] = ceil(global.maxhp[hltarget] / 6);
	
	scr_revive(argument0);
}

snd_stop(snd_power);
snd_play(snd_power);
return global.hp[hltarget] - _curhp;
