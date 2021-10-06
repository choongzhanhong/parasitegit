/// @description Destroy
// You can write your code in this editor

//Create 5 edibles in the Edibles instance layer
audio_play_sound(sound_enemy_bacteria_death, 5, false)
repeat(10) {
	edible = instance_create_layer(x,y,"Edibles",obj_edible)
	edible.direction = random(360)
	edible.speed = 1
	
}