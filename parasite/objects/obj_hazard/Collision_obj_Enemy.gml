/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if not dead or knockback {
		speed = 0
		knockback = true
		knockback_timer=0.5
		//aim the enemy opposite the attack
		sprite_index = sprites[2]
		
		//deal damage to them, once per instance.
		myHP -= 10
		if myHP <= 0 {
			dead = true
			sprite_index = sprites[3]	
		}
	}
	
}