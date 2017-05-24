///@description eat food; grow larger


if(other.speed <= 0){
	with (other) {
		instance_destroy()//destory food
	}
	///player grows
	image_xscale += .08
	image_yscale += .08
	//add pizza to pizza count
	pizza_count += 1;
}

