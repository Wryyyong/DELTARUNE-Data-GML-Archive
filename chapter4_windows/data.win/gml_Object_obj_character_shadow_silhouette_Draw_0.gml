if (!source)
	exit;

image_blend = merge_color(c_black, c_white, image_alpha);
sprite_index = source.sprite_index;
image_index = source.image_index;
image_xscale = source.image_xscale;
image_yscale = source.image_yscale;
var _truex = x - sprite_xoffset;
var _truey = y - sprite_yoffset;
var _truealpha = image_alpha;
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false, false, false, true);
draw_set_alpha(0);
ossafe_fill_rectangle(_truex - 8, _truey - 8, _truex + sprite_width + 8, _truey + sprite_height + 8, false);
draw_set_alpha(1);
image_alpha = 1;
draw_self_offset(xoffset * abs(image_xscale), yoffset * abs(image_yscale));
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true, true, true, true);
gpu_set_blendmode_ext(7, bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(1);
draw_self();
image_alpha = _truealpha;
gpu_set_alphatestref(128);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
