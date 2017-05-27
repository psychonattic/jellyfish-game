/// @description action for pickup

if (player_id != noone)
{
	image_angle = player_id.image_angle + 180;
	direction = image_angle;
	length = player_id.sprite_xoffset-(.25*player_id.sprite_xoffset);

	x = player_id.x - lengthdir_x(length,player_id.direction);
	y = player_id.y - lengthdir_y(length,player_id.direction);
	
	
}



