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
	if(pizza != noone && can_eat == false){
		var dir = point_direction(x,y,pizza.x,pizza.y);
		if(direction+10<=dir){
			action_turn_left();
		}
		else if(direction-10>=dir){
			action_turn_right();
		}else if(pizza.speed == 0){
			action_move_forward();
		}

	
	}else{
		//var rock = instance_nearest(x,y,obj_rock);
		if(rock_id == noone && can_eat == false){
			var rock = instance_nearest(x,y,obj_rock);
			var dir = point_direction(x,y,rock.x,rock.y);
			if(direction+10<dir){
				action_turn_left();
			}
			else if(direction-10>=dir){
				action_turn_right();
			}else if(rock.speed == 0 && rock.player_id == noone){
				action_move_forward();
			}
		}
		else if (rock_id != noone && can_eat == false){
			var player = instance_nearest(x,y,obj_player);
			var dir = point_direction(x,y,player.x,player.y);
			if(direction+22<=dir+180){
				action_turn_left();
			}
			else if(direction-22>=dir+180){
				action_turn_right();
			}
			else{
				action_throw_rock();
			}
		}
	}
	
	
	
	if(can_eat){
		var player = instance_nearest(x,y,obj_player);
		var dir = point_direction(x,y,player.x,player.y);
		if(direction+10<=dir){
			action_turn_left();
		}
		else if(direction-10>dir){
			action_turn_right();
		}else{
			action_move_forward();
		}
	}
	
	
}