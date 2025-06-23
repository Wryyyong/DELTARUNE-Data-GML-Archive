function scr_teevie_screen(arg0) constructor {
	static init = function() {
		set_screen();
	};
	
	static get_tile_pos = function() {
		return _tile_pos;
	};
	
	static set_screen_sprite = function(arg0) {
		_screensprite = arg0;
	};
	
	static get_screen_sprite = function() {
		return _screensprite;
	};
	
	static set_screen_image_index = function(arg0) {
		_screenimage = arg0;
	};
	
	static get_screen_image_index = function() {
		return _screenimage;
	};
	
	static is_animated = function() {
		return _screenanimate;
	};
	
	static disable_animation = function() {
		_screenanimate = false;
	};
	
	static set_screen_con = function(arg0) {
		_screencon = arg0;
	};
	
	static get_screen_con = function() {
		return _screencon;
	};
	
	static set_screen_color = function(arg0) {
		_screencolor = arg0;
	};
	
	static get_screen_color = function() {
		return _screencolor;
	};
	
	static increment_screen_timer = function() {
		_screentimer += 1;
	};
	
	static set_screen_timer = function(arg0) {
		_screentimer = arg0;
	};
	
	static get_screen_timer = function() {
		return _screentimer;
	};
	
	static set_screen_offset = function(arg0) {
		_screenimageoffset = arg0;
	};
	
	static get_screen_offset = function() {
		return _screenimageoffset;
	};
	
	static set_screen = function() {
		var random_image_index = choose(0, 2, 4, 8, 19, 23, 31, 35, 37, 39);
		set_screen_image_index(random_image_index);
		
		switch (random_image_index) {
			case 0:
				set_screen_color(16776960);
				break;
			
			case 2:
				set_screen_color(65535);
				break;
			
			case 4:
				set_screen_color(11785471);
				set_screen_con(2);
				break;
			
			case 8:
				set_screen_color(16776960);
				set_screen_con(3);
				break;
			
			case 19:
				set_screen_color(11785471);
				set_screen_con(4);
				break;
			
			case 23:
				set_screen_color(7389615);
				set_screen_con(5);
				break;
			
			case 31:
				set_screen_color(2984703);
				set_screen_con(6);
				break;
			
			case 35:
				set_screen_color(3439223);
				set_screen_con(7);
				break;
			
			case 37:
				set_screen_color(0);
				set_screen_con(8);
				break;
			
			case 39:
				set_screen_color(12031343);
				set_screen_con(9);
				break;
			
			default:
				set_screen_color(16776960);
				break;
		}
	};
	
	static set_static = function() {
		set_screen_timer(0);
		set_screen_con(1);
		set_screen_sprite(3996);
		set_screen_image_index(0);
		set_screen_color(16777215);
		set_screen_offset(0);
	};
	
	_tile_pos = arg0;
	_screensprite = 4931;
	_screencon = 0;
	_screentimer = floor(random(100) - 100);
	_screencolor = 16777215;
	_screenanimate = true;
	_screenimageoffset = 0;
	_screenimage = 0;
}
