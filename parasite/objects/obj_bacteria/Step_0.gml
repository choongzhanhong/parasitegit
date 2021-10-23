/// @description Steps
// You can write your code in this editor

//MOVEMENT
//you only get to move if you're not knocked back
if not (knockback or sprite_index==sprites[3]) {
#region Movesment
//Your Move Speed
var move_speed_this_frame = move_speed*global.seconds_passed;
//movement
var move_xinput = 0;
var move_yinput = 0;
 
for ( var i = 0; i < array_length_1d(movement_inputs); i++){
    var this_key = movement_inputs[i];
    if keyboard_check(this_key) {
        var this_angle = i*90;
		//the x direction
        move_xinput += lengthdir_x(1, this_angle);
		
		//Change sprite direction if moving left/right
		if move_xinput<0 {image_xscale = abs(image_xscale)*-1}
		else {image_xscale = abs(image_xscale)*1}
		
		//move in y direction
        move_yinput += lengthdir_y(1, this_angle);
    }
}
var moving = ( point_distance(0,0,move_xinput,move_yinput) > 0 );
if moving  {
	sprite_index = sprites[1]
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    move(move_speed_this_frame,  move_dir);
}
#endregion
}


#region Knockback and iFrames

if knockback {
	if speed != 0 {
	speed -= 0.5
	}
	if speed<=0 {
		speed = 0
	}
	knockback_timer -= global.seconds_passed //count down seconds
 	if knockback_timer <=0 {
	knockback = false
	speed = 0
	}
}

if iframe_timer > 0 {
	iframe_timer -= global.seconds_passed	
}
else {
	iframe_timer = 0
	instance_destroy(obj_iframe)
}
#endregion

#region combat
//cooldown for lmb attack
if cooldown_lmb_current <cooldown_lmb {
	cooldown_lmb_current += global.seconds_passed	//1 second each
}
else {
	cooldown_lmb_current = cooldown_lmb	//stop adding 
}
#endregion

#region player variable updating
//update player damage
myDamage = global.food*0.1 + 10

#endregion