/// @description Insert description here
// You can write your code in this editor
/// @description Movement
// You can write your code in this editor


if not dead {
	image_angle -= 0.5	
}

//if not (knockback or dead) {
//	//if there is line of sight
//	if not collision_line(x,y,obj_bacteria.x,obj_bacteria.y,obj_walls,false,false) {
//		sprite_index = sprites[1]
//	}
//	else //not moving
//	{
//		sprite_index = sprites[0]
//	}
//}



if knockback { //knockback friction
	//count down knockback
	knockback_timer -= global.seconds_passed
	//finish knockback, return old speed
	if knockback_timer <= 0{
		knockback = false
		knockback_timer = 0
	}
}

