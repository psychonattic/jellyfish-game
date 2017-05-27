if (speed<maximum_speed){
	if(can_move){
		image_speed = 1;
		motion_add(image_angle,maximum_speed);
	}
}
if(speed>=maximum_speed){
	speed = maximum_speed;
}
speed -= 9;
