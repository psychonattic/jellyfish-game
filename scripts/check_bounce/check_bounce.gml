//collision checking betwen objects
var arg_obj = argument[0];
//horizontal bounce
if(place_meeting(x+1.6*hspeed, y, arg_obj)){
	direction = -direction+180;
	image_angle = direction;
}

//vertical bounce
if(place_meeting(x, y + 1.6*vspeed, arg_obj)){
	direction = -direction;
	image_angle = direction;
}