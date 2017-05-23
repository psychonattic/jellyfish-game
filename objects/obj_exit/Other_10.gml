/// @description Insert description here
// You can write your code in this editor
if(global.gp[0]){
	if(gamepad_button_check_released(0,gp_face2)){
		game_end();
	}
}
if(global.gp[1]){
	if(gamepad_button_check_released(1,gp_face2)){
		game_end();
	}
}

if(keyboard_check_released(vk_escape)){
	game_end();
}