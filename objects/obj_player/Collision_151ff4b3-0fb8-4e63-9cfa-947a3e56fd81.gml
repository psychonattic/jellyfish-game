/// @description pick up rock

if(rock_id == noone && other.speed<=0){//makes sure that you aren't holding a rock 
	rock_id = other.id;				   //and that the rock you are picking up has not been thrown
	if(other.player_id == noone){
		other.player_id = id;
	}
}