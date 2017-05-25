/// @description Insert description here
// You can write your code in this editor


if(can_eat){
	with(other){
		if(rock_id != noone){
			rock_id.player_id = noone;
			rock_id = noone;
		}
	
		instance_destroy();
		global.p1_wins += 1;
		if(global.p1_wins>=global.rounds_to_win){
			room_goto(rm_end);
		}else{
			button_start_game();
		}
	}

}