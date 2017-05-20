/// @description action for pickup and throw

if(thrown){
	motion_add(image_angle,speed);
	thrown = false;
}
else if (player_id != noone)
{
	image_xscale = .4*player_id.image_xscale;
	image_yscale = .4*player_id.image_yscale;
	image_angle = player_id.image_angle + 180;
	direction = image_angle;	
	length = player_id.sprite_xoffset-(.13*player_id.sprite_xoffset);
	x = player_id.x - lengthdir_x(length,player_id.direction);
	y = player_id.y - lengthdir_y(length,player_id.direction);
		
}

//horizontal bounce
if(place_meeting(x+hspeed, y, obj_block) && player_id == noone){
	//direction = -direction + 180;
	image_angle = -image_angle + 180;
	direction = image_angle;
}

//vertical bounce
if(place_meeting(x, y + vspeed, obj_block) && player_id == noone){
	//direction = -direction;
	image_angle = -image_angle;
	direction = image_angle;
}




if(speed <=10){
	speed = max(speed-1,0);
}else{
	speed = max(speed-.3,0);	
}