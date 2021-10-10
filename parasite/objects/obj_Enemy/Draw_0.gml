/// @description health bar
// You can write your code in this editor

draw_self()

if knockback and !dead {
	if initial_knockback = true {
		initial_knockback = false
		audio_play_sound(sound_enemy_bacteria_dmg, 5, false)
	}
	var HP = myHP/myMaxHP*100
	draw_healthbar(x-16,y-20,x+16,y-16,HP,c_white,c_red,c_green,0,true,true) 
} else if knockback {
	if initial_knockback = true {
		initial_knockback = false
		audio_play_sound(sound_enemy_bacteria_dmg, 5, false)
	}
} else {
	initial_knockback = true
}