/// @description Eat Edible
// You can write your code in this editor
with(other){ //other is player
	//destroy the edible	
	instance_destroy()
	global.food+= 1
	if global.food == 30 or global.food == 70 {
		if lives <3 {
			lives +=1
		}
	}
}

