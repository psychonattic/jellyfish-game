/// @description picks up rock
// You can write your code in this editor
if(!has_rock){
	has_rock = true;
	if(other.carried == noone){
		other.carried = id;
	}
}