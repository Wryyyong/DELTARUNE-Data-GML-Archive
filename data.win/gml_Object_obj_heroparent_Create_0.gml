char = 0;
myself = 0;
points = 0;
becomeflash = 0;
state = 0;
flash = 0;
siner = 0;
fsiner = 0;
attacktimer = 0;
attacked = 0;
combatdarken = 1;
darkentimer = 0;
darkify = 0;
image_xscale = 2;
image_yscale = 2;
myheight = 37;
mywidth = 34;
index = 0;
specdraw = 0;
is_auto_susie = 0;
normalsprite = spr_krisr_dark;
idlesprite = spr_krisb_idle;
actreadysprite = spr_krisb_actready;
actsprite = spr_krisb_act;
hurtsprite = spr_krisb_hurt;
defendsprite = spr_krisb_attackready;
attackreadysprite = spr_krisb_attackready;
attacksprite = spr_krisb_attack;
itemsprite = spr_krisb_item;
itemreadysprite = spr_krisb_itemready;
spellreadysprite = spr_ralseib_spellready;
spellsprite = spr_ralseib_spell;
defeatsprite = spr_krisb_defeat;
victorysprite = spr_krisb_victory;
victoryanim = 0;
actframes = 7;
victoryframes = 9;
defendframes = 1;
itemframes = 3;
attackframes = 3;
attackspeed = 0.5;
actframes = 7;
actreturnframes = 10;
spellframes = 10;
hurt = 0;
hurttimer = 0;
hurtindex = 0;
acttimer = 0;
defendtimer = 0;
itemed = 0;
tu = 0;

if (object_index == obj_herokris) {
	normalsprite = spr_krisr_dark;
	idlesprite = spr_krisb_idle;
	defendsprite = spr_krisb_defend;
	hurtsprite = spr_krisb_hurt;
	attackreadysprite = spr_krisb_attackready;
	attacksprite = spr_krisb_attack;
	itemsprite = spr_krisb_item;
	actreadysprite = spr_krisb_actready;
	actsprite = spr_krisb_act;
	itemreadysprite = spr_krisb_itemready;
	spellreadysprite = spr_krisb_actready;
	spellsprite = spr_krisb_act;
	defeatsprite = spr_krisb_defeat;
	victorysprite = spr_krisb_victory;
	actframes = 7;
	actreturnframes = 10;
	attackframes = 6;
	itemframes = 6;
	defendframes = 5;
	spellframes = 10;
	attackspeed = 0.5;
	victoryframes = sprite_get_number(victorysprite);
	mywidth = 68;
	myheight = 74;
}

if (object_index == obj_herosusie) {
	attackframes = 5;
	itemframes = 5;
	defendframes = 5;
	actframes = 7;
	actreturnframes = 10;
	spellframes = 8;
	attackspeed = 0.5;
	normalsprite = spr_susier_dark;
	idlesprite = spr_susieb_idle;
	defendsprite = spr_susieb_defend;
	hurtsprite = spr_susieb_hurt;
	actreadysprite = spr_susieb_actready;
	actsprite = spr_susieb_act;
	attackreadysprite = spr_susieb_attackready;
	attacksprite = spr_susieb_attack;
	
	if (global.charweapon[2] == 0) {
		idlesprite = spr_susieb_idle_unarmed;
		attackreadysprite = spr_susieb_attackready_unarmed;
		attacksprite = spr_susieb_attack_unarmed;
	}
	
	itemsprite = spr_susieb_item;
	itemreadysprite = spr_susieb_itemready;
	spellreadysprite = spr_susieb_spellready;
	spellsprite = spr_susieb_spell;
	defeatsprite = spr_susieb_defeat;
	victorysprite = spr_susieb_victory;
	victoryframes = sprite_get_number(victorysprite);
	mywidth = 70;
	myheight = 82;
}

if (object_index == obj_heroralsei) {
	attackframes = 5;
	itemframes = 7;
	defendframes = 6;
	actframes = 7;
	actreturnframes = 10;
	attackspeed = 0.5;
	normalsprite = spr_ralseir;
	idlesprite = spr_ralseib_idle;
	defendsprite = spr_ralseib_defend;
	hurtsprite = spr_ralsei_shock;
	attackreadysprite = spr_ralseib_attackready;
	attacksprite = spr_ralseib_attack;
	itemsprite = spr_ralseib_item;
	itemreadysprite = spr_ralseib_itemready;
	spellreadysprite = spr_ralseib_spellready;
	spellsprite = spr_ralseib_spell;
	defeatsprite = spr_ralseib_defeat;
	victorysprite = spr_ralseib_victory;
	actreadysprite = spr_ralseib_actready;
	actsprite = spr_ralseib_act;
	victoryframes = sprite_get_number(victorysprite);
	mywidth = 52;
	myheight = 86;
}
