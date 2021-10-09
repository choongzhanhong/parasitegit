/// @description Insert description here
// You can write your code in this editor
with(other)
{
	if not (knockback or dead) {
		knockback = true
		knockback_timer=0.5
		//aim the enemy opposite the attack
		kb_dir = point_direction(other.x,other.y,x,y)
		var kb_speed =10 - weight //knockback depending on weight
		var dx = lengthdir_x(kb_speed,kb_dir) //the resulting knockback location
		var dy = lengthdir_y(kb_speed,kb_dir)
		//check if it will be stuck in wall 5 spaces away
		if place_free(x+dx,y+dy) { 
			direction = kb_dir
			speed= kb_speed
		}
		sprite_index = sprites[2]
		
		//deal damage to them, once per instance.
		myHP -= obj_bacteria.myDamage
		if myHP <= 0 {
			dead = true
			sprite_index = sprites[3]	
		}
	}
	
}

instance_destroy()
