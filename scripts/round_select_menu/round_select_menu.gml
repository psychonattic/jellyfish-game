var select = argument[0];
switch(select){
	case 0: 
	{
		global.rounds_to_win = 1;
		//room_goto(rm_tutorial_screen);
		button_best_of_one();
		break;
	}
	case 1: 
	{
		global.rounds_to_win = 2;
		//room_goto(rm_tutorial_screen);
		button_best_of_three();
		break;
	}
	case 2: 
	{
		global.rounds_to_win = 3;
		//room_goto(rm_tutorial_screen);
		button_best_of_five();
		break;
	}
	case 3:
	{
		button_to_menu();
	}
}