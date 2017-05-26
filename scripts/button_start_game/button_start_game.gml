room_num = irandom_range(0,1);

switch(room_num){
	case 0: 
	{
		room_goto(rm_play);
		break;
	}
	case 1: 
	{
		room_goto(rm_play_1);
		break;
	}
}