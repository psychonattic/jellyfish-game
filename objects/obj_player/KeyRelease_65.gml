/// @description Throw rock

if(rock_id != noone){ //checks that you are holding a rock
	rock_id.speed = 14; //sets the speed of the rock
	rock_id.thrown = true; //sets thrown variable to true
	rock_id.player_id = noone; //releases player from rock
	rock_id = noone; //releases rock from player

}
