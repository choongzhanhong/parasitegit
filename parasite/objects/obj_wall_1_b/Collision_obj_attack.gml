/// @description break only if enough damage
// You can write your code in this editor

if obj_game.food >= threshold {
	audio_play_sound(sound_breakable_wall_destroy, 5, false)
	instance_destroy()
}