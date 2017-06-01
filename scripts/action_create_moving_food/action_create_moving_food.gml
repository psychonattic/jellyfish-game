var pizza;
pizza = instance_create_depth(x,y,0,obj_food);
	with(pizza){
		speed = 15;
		direction = random_range(0,360);
		motion_add(direction,speed);
		speed -= 5;		
	}