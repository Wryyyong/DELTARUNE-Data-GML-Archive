scr_enemy_object_init();
recruitcount = 5;
talkmax = 90;
image_speed = 0.25;
animsiner = -14;
idlesprite = spr_guei_idle;
hurtsprite = spr_guei_hurt;
sparedsprite = spr_guei_idle;
custom_draw_example = 1;
postenemyturnevent = 1;
floatsiner = irandom(100);
exercism = 0;

with (obj_guei_enemy)
	gersonevent = false;

gersonevent = true;
gersonintro = 0;
gersoncon = 0;
gersontimer = 0;
gerson = -1;
gersonactcount = 0;
gersonvar = 0;
gothitcon = 0;
createdgerson = false;
balloonorder = 0;
ballooncon = 0;
balloonend = 1;
talked = 0;
talktimer = 0;
talkedcon = 0;
ralseitalks = 0;
susietalks = 0;
walkvar = 0;
gothitthisturn = false;
