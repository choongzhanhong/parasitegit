/// @description Insert description here
// You can write your code in this editor

//Create 5 edibles in the Edibles instance layer
instance_create_layer(x,y,"Effects_Fg", obj_explosion)

audio_play_sound(sound_enemy_bacteria_death, 5, false)
repeat(20) {
	edible = instance_create_layer(x,y,"Edibles",obj_edible)
}