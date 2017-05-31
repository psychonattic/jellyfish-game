///@description eat food; grow larger


if(other.speed <= 0){
	with (other) {
		instance_destroy()//destory food
	}
	action_eat_food();
}

