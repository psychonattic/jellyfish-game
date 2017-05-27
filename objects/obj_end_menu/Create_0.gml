/// @description Insert description here
// You can write your code in this editor
end_menu[0] = instance_nearest(x,y,obj_back_to_menu);
end_menu[1] = instance_nearest(x,y,obj_exit);

arrow = instance_nearest(x,y,obj_arrow);
arrow.x = end_menu[0].x - end_menu[0].sprite_xoffset - arrow.sprite_xoffset;
arrow.y = end_menu[0].y;

arrow_position = 0;
can_move = true;


