draw_set_blend_mode(bm_add);
texture_set_interpolation(1);
draw_self();
draw_set_blend_mode(bm_normal);
texture_set_interpolation(0);
d3d_set_fog(false, image_blend, 0, 1);
