/// @description Insert description here
// You can write your code in this editor

with(other)
{
	if not (knockback or dead) {
		sprite_index = sprites[2]
		audio_play_sound(sound_player_dmg, 5, false)
		knockback = true
		knockback_timer=0.5
		////aim the enemy opposite the attack
		//direction = point_direction(other.x,other.y,x,y)
		//speed=10 - weight //knockback depending on weight
		//sprite_index = sprites[2]
		
		//deal damage to them, once per instance.
		myHP -= obj_bacteria.myDamage
		if myHP <= 0 {
			dead = true
			sprite_index = sprites[3]	
		}
		
		//create damage number at enemy location
		var xx = lengthdir_x(128,image_angle)
		var yy = lengthdir_y(128,image_angle)
		var number = instance_create_layer(x+xx,y+yy,"Effects_Fg",obj_damage_number)
		number.dmg = string(floor(obj_bacteria.myDamage))
	}
	
}
