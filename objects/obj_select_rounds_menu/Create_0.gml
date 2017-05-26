/// @description Insert description here
// You can write your code in this editor
menu[0] = instance_nearest(x,y,obj_best_of_one);
menu[1] = instance_nearest(x,y,obj_best_of_three);
menu[2] = instance_nearest(x,y,obj_best_of_five);
menu[3] = instance_nearest(x,y,obj_back);

arrow = instance_nearest(x,y,obj_arrow);
arrow.x = menu[0].x - menu[0].sprite_xoffset - arrow.sprite_xoffset;
arrow.y = menu[0].y;

arrow_position = 0;
can_move = true; 
