/// @description instance variable declarations
// You can write your code in this editor
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
player_number = global.player_num;
global.player_num += 1;