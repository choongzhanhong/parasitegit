/// @description collide with enemies
// Should take damage

//If player is not being knocked back, get their ass
//if enemy is dead or knocked back, the player doesn't get hit either
with(other){
	if !(other.knockback or other.dead or other.iframe_timer) and !(knockback or dead) {
		other.knockback = true
		audio_play_sound(sound_player_dmg, 5, false)
		other.sprite_index = other.sprites[2]
		other.knockback_timer = 0.5 // knockback in seconds
		
		//aim the bacteria opposite the enemy [0,360)
		var kb_dir = point_direction(x,y,other.x,other.y)
		var dx = lengthdir_x(4,kb_dir) //the resulting knockback location
		var dy = lengthdir_y(4,kb_dir)
		//check if it will be stuck in wall 5 spaces away
		if place_free(other.x+dx,other.y+dy) { 
			other.direction = kb_dir
			other.speed=4
		}
		
		
		other.iframe_timer = 2 //2 second invulnerability
		instance_create_layer(other.x,other.y,"Effects_Fg",obj_iframe)
		
		minus_lives(obj_bacteria)
		//lives -= 1
		//if lives <=0 {
		//	other.dead = true
		//	instance_destroy(obj_player_effects)
		//	other.sprite_index = other.sprites[3]
			
		//}
	}
}

