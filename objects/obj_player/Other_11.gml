/// @description player-player collision check


if(place_meeting(x+(.4*hspeed), y, obj_player) && can_eat == false){
		image_angle = -image_angle + 180;
		//direction = -direction + 180;
		direction = image_angle;
	}

//vertical bounce
if(place_meeting(x, y + (.4*vspeed), obj_player) && can_eat == false){
	//direction = -direction;
	image_angle = -image_angle;
	direction = image_angle;
}
