/// @description Insert description here
// You can write your code in this editor


//i suppose this is needed
draw_self()

if knockback {
	
	if initial_knockback = true {
		initial_knockback = false
		audio_play_sound(sound_miniboss_1_dmg, 5, false)
	}
	
	draw_sprite_ext(spr_healthbar_bg, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
	draw_sprite_stretched(spr_healthbar, 0, x + x_health_offset, y + y_health_offset, ((myHP/myMaxHP)*healthbar_width)*healthbar_scale, healthbar_height*healthbar_scale)
	draw_sprite_ext(spr_healthbar_border, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
	//var HP = myHP/5
	//draw_healthbar(x-32,y-64,x+32,y-90,HP,c_white,c_red,c_green,0,true,true) 
} else {
	initial_knockback = true
}