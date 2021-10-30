///// @description Eat Edible
//// You can write your code in this editor
with(other){ //other is player
	//destroy the edible	
	instance_destroy()
	audio_play_sound(sound_edible_eaten, 3, false)
	global.food+= 1
	if global.food % 40 == 0 {
		//obj_bacteria.myDamage += 5
		//var notif = instance_create_layer(x,y,"Effects_Fg", obj_player_msg)
		//notif.msg = "+5 Attack"
		if lives <6 {
			lives +=1
			instance_create_layer(x,y,"Effects_Fg", obj_life)
			
		}
	}
	instance_create_layer(other.x,other.y,"Effects_Fg",obj_plus)
}

