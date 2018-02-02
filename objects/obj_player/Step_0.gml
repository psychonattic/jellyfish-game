/// @description slows down player automatically


action_wrap();


//cheks for player input
event_user(0);




//show_debug_message(other_player.pizza_count);
//show_debug_message(pizza_count);
//other_player = action_inst_nth_nearest(obj_player,x,y,2);
if(global.debug){
	other_player = instance_nearest(x,y,obj_player_ai);
}
else{
	other_player = instance_nearest(x,y,obj_player_2);
}

if(other_player == noone){
	
}else{


	if(other_player != noone && other_player.pizza_count+3 <= pizza_count){
	//show_debug_message("can eat!");
		can_eat = true;
		other_player.can_be_eaten = true;
	}else{
		can_eat = false;
		other_player.can_be_eaten = false;
	}

	if(can_be_eaten){
		//image_blend = c_red;
		sprite_index = spr_new_player_pink;
	}
	else if(can_eat){
		//image_blend = c_green;
		sprite_index = spr_new_player_green;
	}else{
		//image_blend = c_white;
		sprite_index = spr_new_player_blue;
	}

}


check_bounce_player(obj_player_2);

check_bounce(obj_block);

//slows player automatically
speed = max(speed-.3,0);

force = speed + 2*pizza_count;


