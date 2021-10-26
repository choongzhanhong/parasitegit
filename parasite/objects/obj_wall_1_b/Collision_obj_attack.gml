/// @description break only if enough damage
// You can write your code in this editor

if (sprite_index == spr_breakwall) {
	if (global.dna >= threshold) {
		audio_play_sound(sound_breakable_wall_destroy, 5, false)
		sprite_index = spr_breakwall_down
	}
	else {
		sprite_index = spr_breakwall_no	
	}
}
