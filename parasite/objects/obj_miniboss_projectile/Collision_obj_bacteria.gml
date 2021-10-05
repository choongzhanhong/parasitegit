/// @description Collide with PLAYER
// You can write your code in this editor
with(other){
	if not knockback {
		knockback = true
		//aim the bacteria opposite the enemy
		// TODO: NOT SURE WHY, BUT PLAYER DOESN'T GET FULLY KNOCKED BACK??
		direction = point_direction(other.x,other.y,x,y)
		speed=10
		sprite_index = sprites[2]
		lives -= 1
		if lives ==0 {
			sprite_index = sprites[3]
	//todo:game over
			}
	}
	instance_destroy(other) //destroy the projectile
}

//todo there is a lot in common with the obj_enemy code can make it better
//todo if this inherits the knockback code from parent it's different from this. idk why