/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5A9FD0DC
/// @DnDArgument : "code" "/// @description pick up rock$(13_10)// You can write your code in this editor$(13_10)if(rock_id == noone){$(13_10)	rock_id = other.id;$(13_10)	if(other.player_id == noone){$(13_10)		other.player_id = id;$(13_10)	}$(13_10)}"
/// @description pick up rock
// You can write your code in this editor
if(rock_id == noone){
	rock_id = other.id;
	if(other.player_id == noone){
		other.player_id = id;
	}
}