
action_create_moving_food();
		
//resizes player and sets hit cooldown
image_xscale -= .11;
image_yscale -= .11;
pizza_count -= 1;
maximum_speed += 1;
alarm[0] = .5*room_speed;
can_be_hit = false;
