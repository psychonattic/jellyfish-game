/// @description action for pickup and throw

if(thrown){
	motion_add(image_angle,speed);
	thrown = false;
}
else if (player_id != noone)
{
	image_angle = player_id.image_angle + 180;
	direction = image_angle;	
	length = player_id.sprite_xoffset-(.25*player_id.sprite_xoffset);
	x = player_id.x - lengthdir_x(length,player_id.direction);
	y = player_id.y - lengthdir_y(length,player_id.direction);
		
}

if(player_id==noone){
	check_bounce(obj_block);
}





if(speed <=10){
	speed = max(speed-1,0);
}else{
	speed = max(speed-.4,0);	
}