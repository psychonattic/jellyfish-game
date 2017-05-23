/// @description Insert description here
// You can write your code in this editor
if(global.gp[0]){
	if(gamepad_button_check_released(0,gp_face1)){
		room_goto(rm_start);
	}
}
if(global.gp[1]){
	if(gamepad_button_check_released(1,gp_face1)){
		room_goto(rm_start);
	}
}

if(keyboard_check_released(vk_enter)){
	room_goto(rm_start);
}
