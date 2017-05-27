if(rock_id != noone){ //checks that you are holding a rock
	alarm[0] = .1*room_speed;
	can_be_hit = false;
	rock_id.direction = direction - 180;
	rock_id.speed = 18.5; //sets the speed of the rock
	rock_id.thrown = true; //sets thrown variable to true
	rock_id.player_id = noone; //releases player from rock
	rock_id = noone; //releases rock from player
}