/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_released(vk_escape)){
	if(window_get_fullscreen()){
		window_set_fullscreen(false);
	}
	else{
		window_set_fullscreen(true);
	}
}
