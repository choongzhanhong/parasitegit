/// @description collide with enemies
// Should take damage

//If player is not being knocked back, get their ass
with(other){
	if not other.knockback {
		other.knockback = true
		//aim the bacteria opposite the enemy
		other.direction = point_direction(x,y,other.x,other.y)
		other.speed=10
		other.sprite_index = other.sprites[2]
		other.knockback_timer = 0.5 // second knockback
		lives -= 1
		if lives <=0 {
			other.sprite_index = other.sprites[3]
			//todo:game over
		}
	}
}

