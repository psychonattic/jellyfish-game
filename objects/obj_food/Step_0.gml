
/// @description slows down player automatically

check_bounce_pizza(obj_block);


if(speed>5){
	speed = max(speed-.3,0)
}

if(speed<=5){
	speed = max(speed-.8,0);
}
