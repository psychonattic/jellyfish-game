/// @description Insert description here
// You can write your code in this editor
var move = 0;

move -= max(keyboard_check_pressed(vk_up),keyboard_check_pressed(ord("W")),0);
move += max(keyboard_check_pressed(vk_down),keyboard_check_pressed(ord("S")),0);

if(global.gp[0] == true && gamepad_axis_value(0,gp_axislv)>.4 && can_move){
	move += 1;
	can_move = false;
	alarm[0] = .2*room_speed;
}

if(global.gp[0] == true && gamepad_axis_value(0,gp_axislv) < -.4 && can_move){
	move -= 1;
	can_move = false;
	alarm[0] = .2*room_speed;
}

if(global.gp[1] == true && gamepad_axis_value(1,gp_axislv)>.4 && can_move){
	move += 1;
	can_move = false;
	alarm[0] = .2*room_speed;
}

if(global.gp[1] == true && gamepad_axis_value(1,gp_axislv) < -.4 && can_move){
	move -= 1;
	can_move = false;
	alarm[0] = .2*room_speed;
}

if(move != 0){
	arrow_position += move;
	if(arrow_position < 0){
		arrow_position = array_length_1d(start_menu) - 1;
	}
	if(arrow_position > array_length_1d(start_menu) - 1){
		arrow_position = 0;
	}
	
	arrow.x = start_menu[arrow_position].x - start_menu[arrow_position].sprite_xoffset - arrow.sprite_xoffset;
	arrow.y = start_menu[arrow_position].y;
}

push = max(keyboard_check_pressed(vk_enter),gamepad_button_check_pressed(0,gp_face1),0);

if(push == 1){
	start_menu_select(arrow_position);
}
