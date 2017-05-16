
/// @description slows down player automatically
if(speed>5){
	speed = max(speed-.3,0)
}

if(speed<=5){
	speed = max(speed-.8,0);
}