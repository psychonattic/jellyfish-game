//collision checking betwen objects
var arg_obj = argument[0];


if(place_meeting(x+(.2*hspeed), y, arg_obj) && can_eat == false){
		image_angle = -image_angle + 180;
		direction = image_angle;
	}

//vertical bounce
if(place_meeting(x, y + (.2*vspeed), arg_obj) && can_eat == false){
	image_angle = -image_angle;
	direction = image_angle;
}