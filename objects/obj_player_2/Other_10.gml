/// @description keyboard/ gamepad input
// You can write your code in this editor
if(global.ai == false){
	if(pad_num>=0){
		if(gamepad_button_check_released(pad_num,gp_face1)){
			action_move_forward();
		}
		if(gamepad_axis_value(pad_num,gp_axislh) > .1 || gamepad_axis_value(pad_num,gp_axislh) < -.1){
			action_turn_gamepad();
		}
		if(gamepad_button_check_released(pad_num,gp_face3)){
			action_throw_rock();
		}
	}


	else
	{//player two -- has arrow key controls
		if(keyboard_check(vk_left)){
			action_turn_left();
		}
		if(keyboard_check(vk_right)){
			action_turn_right();
		}
		if(keyboard_check_released(vk_up)){
			action_move_forward();
		}
		if(keyboard_check_released(vk_down)){//throw rock
			action_throw_rock();
		}
	}
}

if(global.ai == true){
	var pizza = instance_nearest(x,y,obj_food);
	if(pizza != noone){
		var dir = point_direction(x,y,pizza.x,pizza.y);
		while(direction<=dir){
			action_turn_left();
		}
		while(direction>=dir){
			action_turn_right();
		}
		action_move_forward();
		//image_speed = 1;
		//move_towards_point(pizza.x,pizza.y,maximum_speed);
		}
	//}else{
	//	//var rock = instance_nearest(x,y,obj_rock);
	//	if(rock_id == noone){
	//		var rock = instance_nearest(x,y,obj_rock);
	//		//if(rock.player_id != noone){
	//		//	var rock = action_inst_nth_nearest(x,y,obj_rock,1);
	//		//}
	//		var dir = point_direction(x,y,rock.x,rock.y);
	//		while(direction<dir){
	//			action_turn_left();
	//		}
	//		while(direction>dir){
	//			action_turn_right();
	//		}
	//		action_move_forward();
	//	}
	//	else{
	//		var player = instance_nearest(x,y,obj_player);
	//		var dir = point_direction(x,y,player.x,player.y);
	//		while(direction<dir+180){
	//			action_turn_left();
	//		}
	//		while(direction>dir+180){
	//			action_turn_right();
	//		}
	//		action_throw_rock();
	//	}
	//}
	
	
	
	if(can_eat){
		var player = instance_nearest(x,y,obj_player);
		var dir = point_direction(x,y,player.x,player.y);
		while(direction<=dir){
			action_turn_left();
		}
		while(direction>=dir){
			action_turn_right();
		}
		action_move_forward();
	}
	
	
	
}