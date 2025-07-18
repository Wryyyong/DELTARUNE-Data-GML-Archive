outlineColor = shader_get_uniform(shd_outline, "i_color");
outlineW = shader_get_uniform(shd_outline, "i_thickness");
depth = 1000350;
ballsurface = surface_create(320, 240);
ballsurface2 = surface_create(320, 240);
alpha = 0;
bs = part_system_create();
part_system_automatic_draw(bs, false);
btballs = part_type_create();
part_type_sprite(btballs, 3116, false, false, true);
var lifetime = 700;
part_type_speed(btballs, 0.8, 1.6, 0, 0.2);
part_type_life(btballs, lifetime, lifetime);
part_type_size(btballs, 0.1, 0.4, 0, 0);
part_type_direction(btballs, 90, 90, 0, 12);
stopemitting = false;
bemitter = part_emitter_create(bs);
part_emitter_stream(bs, bemitter, btballs, 0);
part_emitter_region(bs, bemitter, 0, camerawidth(), cameraheight() - 100, cameraheight(), 0, 0);
