
/// @description slows down player automatically

check_bounce_pizza(obj_block);


if(speed>7){
	speed = max(speed-.5,0)
}

if(speed<=7){
	speed = max(speed-1.4,0);
}
