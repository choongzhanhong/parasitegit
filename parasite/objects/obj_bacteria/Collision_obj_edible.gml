/// @description Eat Edible
// You can write your code in this editor
with(other){ //other is player
	//destroy the edible	
	instance_destroy()
	audio_play_sound(sound_edible_eaten, 3, false)
	global.food+= 1
	if global.food == 30 or global.food == 70 {
		if lives <3 {
			lives +=1
		}
	}
	
	if global.food == 200 {
		room_goto(rm_win)
	}
	//create eat particles
	instance_create_layer(other.x,other.y,"Effects_Fg",obj_plus)
}

