/// @description pick up rock and get hit

//pickup rock case
if(rock_id == noone && other.speed == 0){//makes sure that you aren't holding a rock 
	if(other.player_id == noone){//and that the rock you are picking up has not been thrown
		rock_id = other.id;
		other.player_id = id;
	}
}

//case where you gte hit by rock and drop food
else if(other.speed > 0 && pizza_count>0 && can_be_hit == true){
	//redirects the rock that hit you 
	with(other){
		check_bounce_rock(obj_player);
	}
	action_lose_food();
}


//case where player can't get any smaller
//also make player unable to move temporarily
else if(other.speed > 0 && pizza_count == 0 && can_be_hit == true){
//redirects rock
	with(other){
		check_bounce_rock(obj_player);
	}

	//hit cooldown
	alarm[0] = .2*room_speed;
	can_be_hit = false;
	
	//movement cooldown
	alarm[1] = 1*room_speed;
	can_move = false;
}


