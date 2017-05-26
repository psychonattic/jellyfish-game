if (speed<maximum_speed){
			if(can_move){
				motion_add(image_angle,x);
			}
		}
		if(speed>=maximum_speed){
			speed = maximum_speed;
		}
		speed -= 6;