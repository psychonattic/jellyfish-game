/// @description instance variable declarations
// You can write your code in this editor
image_speed = 0;
pad_num = -1;
rock_id = noone;
pizza_count = 0;
depth = 1000;
can_be_hit = true;
can_move = true;
can_eat = false;
can_be_eaten = false;
ab = gamepad_is_connected(0)
show_debug_message(ab);
if(global.gp[global.pad_count] == true){
	pad_num = global.pad_count;
	global.pad_count ++;
}
if(global.ai){
	maximum_speed = global.max_speed-4;
}else{
	maximum_speed = global.max_speed;
}
force = speed + 2*pizza_count;

alarm[1] = .3*room_speed;
can_move = false;
