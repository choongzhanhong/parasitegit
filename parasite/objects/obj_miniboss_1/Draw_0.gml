/// @description Insert description here
// You can write your code in this editor


//i suppose this is needed
draw_self()

if knockback {
	
	if initial_knockback = true {
		initial_knockback = false
		audio_play_sound(sound_miniboss_1_dmg, 5, false)
	}
	 
	var HP = myHP/5
	draw_healthbar(x-32,y-64,x+32,y-90,HP,c_white,c_red,c_green,0,true,true) 
} else {
	initial_knockback = true
}