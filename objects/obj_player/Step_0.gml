/// @description slows down player automatically

//cheks for player input
event_user(0);













//horizontal bounce
if(place_meeting(x+hspeed, y, obj_block)){
	direction = -direction + 180;
}

//vertical bounce
if(place_meeting(x, y + vspeed, obj_block)){
	direction = -direction;
}

speed = max(speed-.3,0)
image_angle = direction;

