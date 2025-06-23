function game_restart_true() {
	snd_free_all();
	room_goto(room_restart_true);
}
