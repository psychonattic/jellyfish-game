
/// @description slows down player automatically

//horizontal bounce
if(place_meeting(x+hspeed, y, obj_block)){
	direction = -direction + 180;
}

//vertical bounce
if(place_meeting(x, y + vspeed, obj_block)){
	direction = -direction;
}


if(speed>5){
	speed = max(speed-.3,0)
}

if(speed<=5){
	speed = max(speed-.8,0);
}
