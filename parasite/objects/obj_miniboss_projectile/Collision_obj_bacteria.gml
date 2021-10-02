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
			room_goto(End)
	//todo:game over
			}
	}
	instance_destroy(other) //destroy the projectile
}