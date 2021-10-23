/// @description break only if enough damage
// You can write your code in this editor

if global.dna >= threshold {
	audio_play_sound(sound_breakable_wall_destroy, 5, false)
	instance_destroy()
	//TODO: Change to make it change sprite 
}