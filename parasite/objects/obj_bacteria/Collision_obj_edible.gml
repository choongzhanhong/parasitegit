///// @description Eat Edible
//// You can write your code in this editor
with(other){ //other is player
	//destroy the edible	
	instance_destroy()
	audio_play_sound(sound_edible_eaten, 3, false)
	obj_game.food+= 1
	if obj_game.food % 40 == 0 {
		if lives <3 {
			lives +=1
			instance_create_layer(x,y,"Effects_Fg", obj_life)
		}
	}
}
//	//SIZE UP THE CHARACTER
//	other.image_xscale *= 1.005 //1.01 to 1.005 good
//	other.image_yscale *= 1.005
	
//	//TODO: Animate a transition to next stage
//	if obj_game.food == 200 {
//		layer_sequence_create("Assets",other.x,other.y,seq_transform_1)
//		instance_deactivate_object(obj_player_effects)
//		instance_deactivate_object(obj_bacteria)
//	}
//	//create eat particles
//	instance_create_layer(other.x,other.y,"Effects_Fg",obj_plus)
//}

