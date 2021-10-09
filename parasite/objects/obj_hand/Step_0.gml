/// @description Insert description here
// You can write your code in this editor

//move only if aiming
if not attacking{
#region follow PLAYER
		var move_xinput = 0;
		var move_yinput = 0;
		//Your Move Speed
		var move_speed_this_frame = move_speed*global.seconds_passed;
		var this_angle = point_direction(x,y,obj_bacteria.x,obj_bacteria.y);
		//the x direction
		move_xinput += lengthdir_x(1, this_angle);
		
		//move in y direction
		move_yinput += lengthdir_y(1, this_angle);
		var move_dir = point_direction(0,0,move_xinput,move_yinput);
		move(move_speed_this_frame, move_dir);
#endregion

		if abs(x-obj_bacteria.x) <= 64 {current_cooldown+=global.seconds_passed}
		else {current_cooldown = 0}
		if current_cooldown >= cooldown_attack {attacking=true}
}

else {
	sprite_index = sprites[0]	
}
