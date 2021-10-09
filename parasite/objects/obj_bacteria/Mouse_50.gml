/// @description attack
// You can write your code in this editor

//Tier 0: Melee Attack
if obj_game.tier == 0 {
	if (cooldown_lmb_current>=cooldown_lmb) and !(dead or knockback){
		var attack = instance_create_layer(x,y,"Effects_Bg",obj_attack)
		//get rid of aim reticle
		//instance_destroy(obj_aim)
		instance_create_layer(x,y,"Effects_Fg", obj_cooldown)
		attack.image_angle = point_direction(x,y,mouse_x,mouse_y)
		audio_play_sound(sound_player_melee_atk, 5, false)
		cooldown_lmb_current=0
	}
}

//Tier 1: Shoot
if obj_game.tier == 1 {
	if (cooldown_lmb_current>=cooldown_lmb) and !(dead or knockback){
		var attack = instance_create_layer(x,y,"Effects_Bg",obj_projectile)
		attack.direction = point_direction(x,y,mouse_x,mouse_y)
		attack.speed = 3
		
		instance_create_layer(x,y,"Effects_Fg", obj_cooldown)
		audio_play_sound(sound_player_melee_atk, 5, false)
		cooldown_lmb_current=0
	}
}