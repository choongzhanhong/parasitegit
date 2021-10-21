/// @description health bar
// You can write your code in this editor

draw_self()

if knockback and !dead {
	if initial_knockback = true {
		initial_knockback = false
		audio_play_sound(sound_enemy_bacteria_dmg, 5, false)
	}
	//var HP = myHP/myMaxHP*100
	draw_sprite_ext(spr_healthbar_bg, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
	draw_sprite_stretched(spr_healthbar, 0, x + x_health_offset, y + y_health_offset, ((myHP/myMaxHP)*healthbar_width)*healthbar_scale, healthbar_height*healthbar_scale)
	draw_sprite_ext(spr_healthbar_border, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
	//draw_healthbar(x-16,y-20,x+16,y-16,HP,c_white,c_red,c_green,0,true,true) 
} else if knockback {
	if initial_knockback = true {
		initial_knockback = false
		audio_play_sound(sound_enemy_bacteria_dmg, 5, false)
	}
} else {
	initial_knockback = true
}