snd_free_all_ch1();

with (obj_battlecontroller_ch1)
	skipvictory = 1;

with (obj_kingcutscene_ch1) {
	with (king)
		visible = 1;
}

if (global.flag[247] == 0) {
	with (obj_kingcutscene_ch1) {
		with (king)
			sprite_index = spr_chainking_hurt_ch1;
	}
}

instance_destroy();
