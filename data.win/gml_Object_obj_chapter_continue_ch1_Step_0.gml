if (init < 40) {
	init++;
	text_alpha = clamp(text_alpha + 0.05, 0, 1);
	ypos_offset = clamp(ypos_offset - 3, 0, 40);
}

if (!confirmed_selection) {
	if (up_p_ch1()) {
		move_noise = true;
		choice_index = ((choice_index - 1) < 0) ? 1 : 0;
	}
	
	if (down_p_ch1()) {
		move_noise = true;
		choice_index = ((choice_index + 1) > 1) ? 0 : 1;
	}
	
	if (button1_p_ch1()) {
		select_noise = true;
		confirmed_selection = true;
		alarm[0] = 30;
	}
}

if (confirmed_selection)
	text_alpha = clamp(text_alpha - 0.5, 0, 1);

if (move_noise) {
	move_noise = false;
	snd_play_ch1(snd_menumove_ch1);
}

if (select_noise) {
	select_noise = false;
	snd_play_ch1(snd_select_ch1);
}
