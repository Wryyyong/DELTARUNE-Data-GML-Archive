if (treasure_sequence) {
	treasure_timer++;
	
	if (global.interact == 0) {
		global.interact = 1;
		scr_shakescreen();
		snd_play(snd_closet_impact);
		show_treasure();
	}
	
	if (treasure_timer >= 20) {
		global.interact = 0;
		treasure_sequence = false;
		treasure_timer = 0;
	}
}
