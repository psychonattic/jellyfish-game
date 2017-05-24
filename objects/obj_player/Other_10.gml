/// @description keyboard/ gamepad input
// You can write your code in this editor
if(pad_num>=0){
	if(gamepad_button_check_released(pad_num,gp_face1)){
		action_move_forward();
	}
	if(gamepad_axis_value(pad_num,gp_axislh) > .1 || gamepad_axis_value(pad_num,gp_axislh) < -.1){
		//image_angle -= 9*gamepad_axis_value(pad_num,gp_axislh);
		//direction = image_angle;
		action_turn_gamepad();
	}
	if(gamepad_button_check_released(pad_num,gp_face3)){
		action_throw_rock();
	}
}


else{
//player 1 -- has wasd controls
	if(keyboard_check(ord("A"))){
		action_turn_left();
	}
	if(keyboard_check(ord("D"))){
		action_turn_right();
	}
	if(keyboard_check_released(ord("W"))){
		action_move_forward();
	}
	if(keyboard_check_released(ord("S"))){//throw rock
		action_throw_rock();
	}
}
