/// @description destroy!
// You can write your code in this editor

audio_play_sound(sound_miniboss_1_death, 5, false)

repeat(5){
	instance_create_layer(x,y,"Edibles", obj_edible)
}