with (obj_caterpillarchara) {
	if (name == "susie") {
		visible = false;
		other.susieball = scr_marker_ext(x, y, 66, 2, 2, 0.25, 0, 16777215, depth);
		other.susietimer = 0;
		scr_stickto(other.susieball, 0);
		var xx = other.x - 20;
		var yy = other.y - 22;
		
		with (other.susieball)
			scr_jump_to_point(xx, yy, 8, 20, true);
		
		snd_play(snd_wing);
	}
}
