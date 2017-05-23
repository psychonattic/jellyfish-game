/// @description keyboard/ gamepad input
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
		image_angle -= 7.5*gamepad_axis_value(pad_num,gp_axislh);
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

if(player_number == 0){//player 1 -- has wasd controls
	if(keyboard_check(ord("A"))){
		image_angle += 7;
		direction = image_angle;
	}
	if(keyboard_check(ord("D"))){
		image_angle -= 7;
		direction = image_angle;
	}
	if(keyboard_check_released(ord("W"))){
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
	if(keyboard_check_released(ord("S"))){//throw rock
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
}else if(player_number == 1){//player two -- has arrow key controls
	if(keyboard_check(vk_left)){
		image_angle += 7;
		direction = image_angle;
	}
	if(keyboard_check(vk_right)){
		image_angle -= 7;
		direction = image_angle;
	}
	if(keyboard_check_released(vk_up)){
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
	if(keyboard_check_released(vk_down)){//throw rock
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