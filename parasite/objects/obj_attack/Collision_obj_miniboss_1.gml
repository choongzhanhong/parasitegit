/// @description specifically collide with miniboss
// You can write your code in this editor


with(other)
{
	if not knockback {
		knockback = true
		knockback_timer = 0.6
		sprite_index = sprites[2]
		
		//deal damage to them, once per instance.
		myHP -= obj_bacteria.myDamage
		
	}
	
}
