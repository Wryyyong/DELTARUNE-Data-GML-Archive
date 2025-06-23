function scr_textsound_ch1() {
	playtextsound = 1;
	
	if (button2_h_ch1() == 1)
		playtextsound = 0;
	
	if (skippable == 0)
		playtextsound = 1;
	
	if (playtextsound == 1) {
		if (rate <= 2)
			getchar = string_char_at(mystring, pos);
		else
			getchar = string_char_at(mystring, pos - 1);
		
		play = 1;
		playcheck = 0;
		
		if (getchar == "&") {
			if (rate < 3) {
				playcheck = 1;
				getchar = string_char_at(mystring, pos + 1);
			} else {
				play = 0;
			}
		}
		
		if (getchar == " ")
			play = 0;
		
		if (getchar == "^")
			play = 0;
		
		if (getchar == "!")
			play = 0;
		
		if (getchar == ".")
			play = 0;
		
		if (getchar == "?")
			play = 0;
		
		if (getchar == ",")
			play = 0;
		
		if (getchar == ":")
			play = 0;
		
		if (getchar == "/")
			play = 0;
		
		if (getchar == "\\")
			play = 0;
		
		if (getchar == "|")
			play = 0;
		
		if (getchar == "*")
			play = 0;
		
		if (play == 1) {
			snd_play_ch1(textsound);
			
			with (obj_face_parent_ch1)
				mouthmove = 1;
		}
	}
}
