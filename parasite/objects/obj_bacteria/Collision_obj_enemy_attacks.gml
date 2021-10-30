/// @description collide with enemies
// Should take damage

//If player is not being knocked back, get their ass
with(other){
	if !(other.knockback or other.dead or other.iframe_timer) {
		other.knockback = true
		audio_play_sound(sound_player_dmg, 5, false)
		other.sprite_index = other.sprites[2]
		other.knockback_timer = 0.5 // knockback in seconds
		
		//aim the bacteria opposite the enemy [0,360)
		var kb_dir = point_direction(x,y,other.x,other.y)
		var dx = lengthdir_x(3,kb_dir) //the resulting knockback location
		var dy = lengthdir_y(3,kb_dir)
		//check if it will be stuck in wall 5 spaces away
		if not place_meeting(other.x+dx,other.y+dy,obj_walls) { 
			other.direction = kb_dir
			other.speed=3
		}
		
		
		other.iframe_timer = 2 //2 second invulnerability
		instance_create_layer(other.x,other.y,"Effects_Fg",obj_iframe)
		
		
		minus_lives(obj_bacteria)
	}
}

