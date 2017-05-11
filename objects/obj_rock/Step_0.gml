/// @description if picked up, follow the person that picked it up
// You can write your code in this editor
if carried != noone
{
	length = carried.sprite_xoffset-(.1*carried.sprite_xoffset);
	x = carried.x - lengthdir_x(length,carried.direction);
	y = carried.y - lengthdir_y(length,carried.direction);
	image_xscale = .4*carried.image_xscale;
	image_yscale = .4*carried.image_yscale;
	//image_angle = carried.image_angle;
	//direction = image_angle;
	
}
