/// @description slows down player automatically


//checks for player colision
event_user(1);

//cheks for player input
event_user(0);





//show_debug_message(other_player.pizza_count);
//show_debug_message(pizza_count);
//other_player = action_inst_nth_nearest(obj_player,x,y,2);
other_player = instance_nearest(x,y,obj_player_2);
if(other_player != noone && other_player.pizza_count+3 <= pizza_count){
//show_debug_message("can eat!");
	can_eat = true;
	other_player.can_be_eaten = true;
}else{
	can_eat = false;
	other_player.can_be_eaten = false;
}

if(can_be_eaten){
	image_blend = c_red;
}
else if(can_eat){
	image_blend = c_green;
}else{
	image_blend = c_white;
}










//horizontal bounce
if(place_meeting(x+hspeed, y, obj_block)){
	direction = -direction + 180;
	image_angle = direction;
}

//vertical bounce
if(place_meeting(x, y + vspeed, obj_block)){
	direction = -direction;
	image_angle = direction;
}

speed = max(speed-.3,0)


