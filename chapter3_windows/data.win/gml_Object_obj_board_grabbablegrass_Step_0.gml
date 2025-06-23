if (!reqactive)
	active = true;

siner++;
var destroy = false;

if (init == 0)
	init = 1;

if (active) {
	if (room == room_dw_puzzlecloset_1) {
		if (i_ex(obj_board_swordhitbox)) {
			if (place_meeting(x, y, obj_board_swordhitbox)) {
				if (type == "marker")
					dirt = scr_board_marker(x, y, 2406, 0, 999999, 2);
				
				instance_create(x + 16, y + 16, obj_board_enemydefeatsplash);
				instance_destroy();
			}
		}
	}
	
	if (con == 1) {
		con = -1;
		
		if (type != "marker")
			snd_play_delay(73, 10);
		
		scr_delay_var("con", 2, 10);
		
		if (!infinite)
			visible = false;
		
		var _su = 0;
		
		with (obj_mainchara_board) {
			if (name == "susie")
				_su = id;
		}
	}
	
	if (con == 2.1) {
		con = 99999;
		
		if (type == "coin") {
			var movetime = 4;
			var waittime = 6;
			coin = instance_create(x, y, obj_board_marker);
			
			with (coin) {
				scr_darksize();
				sprite_index = spr_board_pointsGet;
				scr_lerpvar("y", y, (y - 32) + 4, movetime, 2, "out");
			}
			
			scr_delay_var("con", 10, movetime + waittime);
			scr_doom(coin, movetime + waittime + 5);
		}
		
		if (type == "marker") {
			var movetime = 4;
			var waittime = 6;
			snd_play(snd_board_splash);
			
			with (instance_create(x, y, obj_board_smokepuff))
				image_blend = #FFECBD;
			
			dirt = scr_board_marker(x, y, 2406, 0, 999999, 2);
			scr_delay_var("con", 10, movetime + waittime);
		}
	}
	
	if (con == 2) {
		con = -1;
		
		with (grabdaddy)
			image_index = 1;
		
		if (!infinite)
			image_alpha = 0;
		
		if (type == "coin") {
			var movetime = 4;
			var waittime = 6;
			var targx = x;
			var targy = y;
			
			with (grabdaddy) {
				targx = x;
				targy = y;
			}
			
			coin = instance_create(targx, targy, obj_board_marker);
			
			with (coin) {
				scr_darksize();
				sprite_index = spr_board_pointsGet;
				scr_lerpvar("y", y, (y - 32) + 4, movetime, 2, "out");
			}
			
			with (grabdaddy) {
				scr_var_delay("fun", 0, movetime + waittime + 4);
				scr_var_delay("grab", 0, movetime + waittime + 4);
				scr_var_delay("canfreemove", 1, movetime + waittime + 4);
			}
			
			scr_delay_var("con", 10, movetime + waittime);
			scr_doom(coin, movetime + waittime + 5);
		}
		
		if (type == "marker") {
			var movetime = 4;
			var waittime = 6;
			snd_play(snd_board_splash);
			
			with (instance_create(x, y, obj_board_smokepuff))
				image_blend = #FFECBD;
			
			dirt = scr_board_marker(x, y, 2406, 0, 999999, 2);
			
			with (grabdaddy) {
				scr_var_delay("fun", 0, movetime + waittime + 4);
				scr_var_delay("grab", 0, movetime + waittime + 4);
				scr_var_delay("canfreemove", 1, movetime + waittime + 4);
			}
			
			scr_delay_var("con", 10, movetime + waittime);
		}
		
		if (type == "pot") {
			grabdaddy.grabmarker = instance_create(x, y, obj_board_grabobject);
			sprite_index = potsprite;
			
			with (grabdaddy.grabmarker) {
				snd_play(snd_board_lift);
				grabdaddy = other.grabdaddy;
				grabbedid = other.id;
				image_xscale = 2;
				image_yscale = 2;
				image_speed = 0;
				sourcex = other.x;
				sourcey = other.y;
			}
			
			var postpickupwait = 4;
			
			with (grabdaddy)
				scr_delay_var("canfreemove", true, postpickupwait);
			
			with (grabdaddy)
				scr_delay_var("fun", false, postpickupwait);
			
			con = 20;
		}
		
		if (type == "bomb" || type == "puzzlebomb") {
			grabdaddy.grabmarker = instance_create(x, y, obj_board_grabobject);
			var puzzle = false;
			bomb = instance_create(x, y, obj_board_bomb);
			
			if (type == "puzzlebomb") {
				puzzle = true;
				bomb.throwdist = 1;
				bomb.fatal = false;
				bomb.ignoreplayer = true;
			}
			
			bomb.visible = false;
			sprite_index = potsprite;
			
			with (grabdaddy.grabmarker) {
				snd_play(snd_board_lift);
				grabdaddy = other.grabdaddy;
				grabbedid = other.bomb;
				
				if (puzzle == true) {
					type = 2;
					throwdist = 1;
					ignoreplayer = 1;
				}
				
				image_xscale = 2;
				image_yscale = 2;
				image_speed = 0;
				sourcex = other.x;
				sourcey = other.y;
			}
			
			var postpickupwait = 4;
			
			with (grabdaddy)
				scr_delay_var("canfreemove", true, postpickupwait);
			
			with (grabdaddy)
				scr_delay_var("fun", false, postpickupwait);
			
			con = 30;
		}
	}
	
	if (con == 10) {
		if (i_ex(coin)) {
			var puff = instance_create(coin.x, coin.y, obj_board_smokepuff);
			puff.depth = coin.depth + 1;
			var pointsDisplay = instance_create(coin.x + 16, coin.y + 16, obj_board_pointsGetDisplay);
			pointsDisplay.amount = value;
			pointsDisplay.depth = coin.depth - 1;
			safe_delete(coin);
			destroy = true;
		} else {
			instance_destroy();
		}
	}
	
	if (con == 20 && !i_ex(obj_board_grabobject)) {
		instance_create(x, y, obj_board_breakpoof);
		destroy = true;
	}
	
	if (con == 30) {
		if (obj_board_camera.con != 0) {
			safe_delete(bomb);
			destroy = true;
		}
		
		if (!i_ex(obj_board_grabobject))
			destroy = true;
	}
	
	if (destroy == true) {
		if (infinite) {
			var newGrass = instance_create(x, y, object_index);
			newGrass.type = type;
			newGrass.value = value;
			newGrass.potsprite = potsprite;
			newGrass.puzzleid = puzzleid;
			newGrass.infinite = infinite;
		}
		
		instance_destroy();
	}
} else if (room != room_dw_puzzlecloset_1) {
	instance_destroy();
}
