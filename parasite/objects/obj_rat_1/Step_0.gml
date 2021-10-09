/// @description ATTACK
// You can write your code in this editor
if not dead {

//keep counting 
if current_cooldown > 0 {
	current_cooldown -= global.seconds_passed	
}
else {
	current_cooldown = cooldown_attack
	attacking = !attacking
}
//It attacks when able

//attacking
if attacking {
	//charging up for 3s (4-1)
	if current_cooldown>=1 {	
		var move_xinput = 0;
		var move_yinput = 0;
		//Your Move Speed
		var move_speed_this_frame = move_speed*global.seconds_passed;
		var this_angle = point_direction(x,y,obj_bacteria.x,obj_bacteria.y);
		
		//the x direction
		move_xinput += lengthdir_x(1, this_angle);
		//Change sprite direction if moving left/right
		
		if move_xinput<0 {image_xscale = abs(image_xscale)*-1}
		else {image_xscale = abs(image_xscale)*1}	
		
		//move in y direction
		move_yinput += lengthdir_y(1, this_angle);
		
		
		//move_xinput omitted
		var move_dir = point_direction(0,0,0,move_yinput);
		move(move_speed_this_frame, move_dir);
		
		
		lockon = point_direction(x,y,obj_bacteria.x,obj_bacteria.y)
	}
	//charging at you for 1s
	else {
		var dx = lengthdir_x(3,lockon) //the resulting knockback location
		var dy = lengthdir_y(5,lockon)
		//check if it will be stuck in wall 5 spaces away
		if place_free(x+dx,y+dy) { 
			direction = lockon
			speed=3
		}
		else {
			if speed > 0 {
				speed = 0
				instance_create_layer(x,y,"Effects_Fg", obj_explosion)
			}
		}
		sprite_index = sprites[1]
	}
}
//not attacking
else {
	
	if not knockback{
		sprite_index = sprites[4]
		speed = 0
	}
}


//Knockback prevents attack
if knockback { //knockback friction
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

}