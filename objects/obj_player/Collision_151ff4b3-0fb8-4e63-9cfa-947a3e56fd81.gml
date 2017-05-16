/// @description pick up rock and get hit

//pickup rock case
if(rock_id == noone && other.speed<=0){//makes sure that you aren't holding a rock 
	rock_id = other.id;				   //and that the rock you are picking up has not been thrown
	if(other.player_id == noone){
		other.player_id = id;
	}
}

//case where you gte hit by rock and drop food
if(other.speed > 0 && pizza_count>0){
	
	
	if(can_be_hit == true){
		//redirects the rock that hit you semi-randomly
		other.direction += random_range(45,135);
		with(other){
			motion_add(direction,.3*other.speed);
		}
		
		//creates new food object
		var pizza;
		pizza = instance_create_depth(x,y,0,obj_food);
		with(pizza){
			speed = 12;
			direction = random_range(0,360);
			motion_add(direction,speed);
			speed -= 5;		
		}
		
		//resizes player and sets hit cooldown
		image_xscale -= .08;
		image_yscale -= .08;
		pizza_count -= 1;
		alarm[0] = .5*room_speed;
		can_be_hit = false;
	}
}


//case where player can't get any smaller
//also make player unable to move temporarily
else if(other.speed > 0 && pizza_count == 0 && can_be_hit == true){
	//redirects the rock that hit you semi-randomly
	other.direction += random_range(45,135);
	with(other){
		motion_add(direction,.3*other.speed);
	}
	
	//hit cooldown
	alarm[0] = .2*room_speed;
	can_be_hit = false;
	
	//movement cooldown
	alarm[1] = 1*room_speed;
	can_move = false;
}