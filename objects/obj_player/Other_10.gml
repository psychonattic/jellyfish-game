/// @description gamepad input
// You can write your code in this editor
if(pad_num>=0){
	if(gamepad_button_check_released(pad_num,gp_face1)){
		if (speed<23){
			if(can_move){
				motion_add(image_angle,x)
			}
		}
		if(speed>=23){
			speed = 23
		}
		speed -= 6
	}

	if(gamepad_axis_value(pad_num,gp_axislh) > .1 || gamepad_axis_value(pad_num,gp_axislh) < -.1){
		image_angle -= 6*gamepad_axis_value(pad_num,gp_axislh);
		direction = image_angle;
	}


	if(gamepad_button_check_released(pad_num,gp_face3)){
		if(rock_id != noone){ //checks that you are holding a rock
			alarm[0] = .1*room_speed;
			can_be_hit = false;
			rock_id.direction = direction - 180;
			rock_id.speed = 14; //sets the speed of the rock
			rock_id.thrown = true; //sets thrown variable to true
			rock_id.player_id = noone; //releases player from rock
			rock_id = noone; //releases rock from player
		}
	}
}