if(can_eat){
	with(other){
		if(rock_id != noone){
			rock_id.player_id = noone;
			rock_id = noone;
		}
	
		instance_destroy();
		room_goto(rm_end);
	}

}