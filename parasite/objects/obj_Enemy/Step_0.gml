/// @description Movement
// You can write your code in this editor

if not (knockback or dead) {
	//if there is line of sight
	if not collision_line(x,y,obj_bacteria.x,obj_bacteria.y,obj_walls,false,false) {
		sprite_index = sprites[1]
		mp_potential_step_object(obj_bacteria.x, obj_bacteria.y,0.3, obj_hazard)
		sprite_index = sprites[1]
		if (direction > 90 and direction < 270 ){
			image_xscale = -1	
		}
		else {
			image_xscale = 1	
		}
	}
	else //not moving
	{
		sprite_index = sprites[0]
	}
}
else { //knockback friction
	//count down knockback
	knockback_timer -= global.seconds_passed
	if speed > 0 {speed -= 0.5}
	else {speed = 0}
	//finish knockback, return old speed
	if knockback_timer <= 0{
		knockback = false
		knockback_timer = 0
	}
	
	//keep reducing speed if knocked back and speed above zero

}

