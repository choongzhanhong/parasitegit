/// @description Hit enemy
// You can write your code in this editor

with(other)
{
	if not knockback {
		knockback = true
		knockback_timer=0.5
		//aim the enemy opposite the attack
		direction = point_direction(other.x,other.y,x,y)
		speed=10
		sprite_index = sprites[2]
		
		//deal damage to them, once per instance.
		myHP -= obj_bacteria.myDamage
	}
	
}



