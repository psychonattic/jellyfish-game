/// @description if picked up, follow the person that picked it up
// You can write your code in this editor
if(player_id != noone && player_id.rock_id == noone){
	player_id = noone;
}
if player_id != noone
{
	length = player_id.sprite_xoffset-(.13*player_id.sprite_xoffset);
	x = player_id.x - lengthdir_x(length,player_id.direction);
	y = player_id.y - lengthdir_y(length,player_id.direction);
	image_xscale = .4*player_id.image_xscale;
	image_yscale = .4*player_id.image_yscale;
	//image_angle = carried.image_angle;
	//direction = image_angle;
	
}
