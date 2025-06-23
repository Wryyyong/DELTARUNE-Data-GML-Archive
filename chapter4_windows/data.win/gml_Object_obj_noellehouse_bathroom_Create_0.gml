vent_entrance_marker = scr_marker(127, 40, spr_noellehouse_vent_closed_bathroom);
vent_entrance_marker.depth = 6100;
vent_cover_marker = scr_marker(vent_entrance_marker.x, vent_entrance_marker.y, spr_noellehouse_vent_closed_bathroom_cover);
vent_cover_marker.depth = 5999;
left_cover = scr_marker(120, 40, spr_pixel_white);
left_cover.depth = 6000;
left_cover.image_yscale = 4;
left_cover.image_blend = #FFF0EB;
right_cover = scr_marker(150, 40, spr_pixel_white);
right_cover.depth = 6000;
right_cover.image_yscale = 4;
right_cover.image_blend = #FFF0EB;
trashcan_marker = scr_marker(210, 150, spr_noellehouse_bathroom_trashcan);

with (trashcan_marker)
	scr_depth();

var toilet_marker = scr_marker(126, 48, spr_noellehouse_bathroom_toilet);
toilet_marker.depth = 100000;
var shower_marker = scr_marker(90, 49, spr_noellehouse_bathroom_shower_head);
shower_marker.depth = 100000;
var curtain_marker = scr_marker(79, 60, spr_noellehouse_bathroom_shower_curtain);
curtain_marker.depth = 100000;
var vent_marker = scr_marker(vent_entrance_marker.x, 40, spr_noellehouse_vent_closed_bathroom);
vent_marker.depth = 100000;
