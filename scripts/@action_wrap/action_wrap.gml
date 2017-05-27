/// @description (Old DnD) - motion wrap
/// @param index  (0 || 2 ) horizontal wrap (1 || 2 ) vertical wrap

var spr_width = sprite_width;
var spr_height = sprite_height;


if (hspeed < 0) && (x+sprite_xoffset < 0)
	x += room_width + spr_width;
if (hspeed > 0) && (x-sprite_xoffset >= room_width)
	x -= room_width + spr_width;


if (vspeed < 0) && (y+sprite_yoffset < 0)
	y += room_height + spr_height;
if (vspeed > 0) && (y-sprite_yoffset >= room_height)
	y -= room_height + spr_height;



