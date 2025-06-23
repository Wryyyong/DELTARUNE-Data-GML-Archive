function scr_heal_ch1(arg0, arg1) {
	abovemaxhp = 0;
	belowzero = 0;
	hltarget = global.char[arg0];
	_curhp = global.hp[hltarget];
	
	if (global.hp[hltarget] <= 0)
		belowzero = 1;
	
	if (global.hp[hltarget] > global.maxhp[hltarget])
		abovemaxhp = 1;
	
	if (abovemaxhp == 0) {
		global.hp[hltarget] += arg1;
		
		if (global.hp[hltarget] > global.maxhp[hltarget])
			global.hp[hltarget] = global.maxhp[hltarget];
	}
	
	if (belowzero == 1 && global.hp[hltarget] >= 0) {
		if (global.hp[hltarget] < ceil(global.maxhp[hltarget] / 6))
			global.hp[hltarget] = ceil(global.maxhp[hltarget] / 6);
		
		scr_revive_ch1(arg0);
	}
	
	snd_stop_ch1(snd_power_ch1);
	snd_play_ch1(snd_power_ch1);
	return global.hp[hltarget] - _curhp;
}
