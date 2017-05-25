//collision checking betwen objects
var arg_obj = argument[0];
//horizontal bounce
if(place_meeting(x+hspeed, y, arg_obj)){
	direction = -direction + 180 + random_range(-30,30);
	image_angle = direction;
}

//vertical bounce
if(place_meeting(x, y + vspeed, arg_obj)){
	direction = -direction + random_range(-30,30);
	image_angle = direction;
}