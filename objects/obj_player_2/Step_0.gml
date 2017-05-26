/// @description slows down player automatically



action_wrap();


//cheks for player input
event_user(0);





//show_debug_message(other_player.pizza_count);
//show_debug_message(pizza_count);
other_player = instance_nearest(x,y,obj_player);
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
	sprite_index = spr_player_red;
}
else if(can_eat){
	//image_blend = c_green;
	sprite_index = spr_player_green;
}else{
	//image_blend = c_white;
	sprite_index = spr_player;
}

check_bounce_player(obj_player);


check_bounce(obj_block);

//shows player down
speed = max(speed-.3,0);

force = speed + 2*pizza_count;
