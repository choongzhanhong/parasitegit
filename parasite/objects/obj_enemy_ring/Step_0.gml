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
		
		if !collision_line(x,y,obj_bacteria.x, obj_bacteria.y,obj_walls,false,true){
			lockon = point_direction(x,y,obj_bacteria.x,obj_bacteria.y)
			image_angle = lockon
		}
	}
	//charging at you for 1s
	else {
		var dx = lengthdir_x(5,lockon) 
		var dy = lengthdir_y(5,lockon)
		//check if it will be stuck in wall 5 spaces away
		if place_free(x+dx,y+dy) and !place_meeting(x+dx, y+dy, obj_Enemy) { 
			direction = lockon
			speed=1.5
		}
		else {
			speed = 0	
		}
		shoot = 0;
		
		sprite_index = sprites[1]
	}
}
//not attacking
else {
	
	//shoot ring
		bb = max(1,bullets-1);
		aa = max(1,total_arrays-1);

		a_ang = (array_spread/aa);
		b_ang = (spread/bb);
		
		if (shoot=0) {
			shoot++;
			for (var i=0;i<bullets;i++) {//loop for each bullet
				//determine the point where the bullets will fire from
				xx = x+x_offset+lengthdir_x(object_width,base_angle+(b_ang*i)+start_angle);
				yy = y+y_offset+lengthdir_y(object_height,base_angle+(b_ang*i)+start_angle);
            
				bullet = instance_create_layer(xx,yy,"Effects_Fg",bullet_object);//create a bullet at the desired location
				bullet.direction = base_angle+(b_ang*i)+start_angle;//give that bullet the desired direction
				bullet.image_angle = base_angle+(b_ang*i)+start_angle;//set the bullet's image_angle so it faces the same direction
				bullet.speed = bullet_speed;//give the bullet the desired speed
				bullet.acc = bullet_accel;
			}
		}
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