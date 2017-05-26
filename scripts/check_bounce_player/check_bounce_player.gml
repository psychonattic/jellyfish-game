//collision checking betwen objects
var arg_obj = argument[0];
var other_player = instance_nearest(x,y,arg_obj);

if(place_meeting(x+(hspeed), y, arg_obj) && can_eat == false){
	//image_angle = -image_angle + 180;
	//direction = image_angle;
	if(force>other_player.force){
		image_angle = -image_angle + 180;
		direction = image_angle;
		with(other_player){
			//movement cooldown
			speed = 0;
			alarm[1] = 1*room_speed;
			can_move = false;
		}
	}
}

//vertical bounce
if(place_meeting(x, y + (vspeed), arg_obj) && can_eat == false){
	//image_angle = -image_angle;
	//direction = image_angle;
	if(force>=other_player.force){
		image_angle = -image_angle;
		direction = image_angle;
		with(other_player){
			speed = 0;
			//movement cooldown
			alarm[1] = 1*room_speed;
			can_move = false;
		}
	}
}