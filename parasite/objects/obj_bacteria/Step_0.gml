/// @description Steps
// You can write your code in this editor

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
	//sprite_index = spr_bact_moving
    var move_dir = point_direction(0,0,move_xinput,move_yinput);
    move(move_speed_this_frame,  move_dir);
}
else {
	//sprite_index = spr_bact_idle
}
#endregion

#region combat
//cooldown for lmb attack
if cooldown_lmb_current <cooldown_lmb {
	cooldown_lmb_current = cooldown_lmb_current + global.seconds_passed	//1 second each
}
//point towards mouse
//image_angle = point_direction(x,y,mouse_x,mouse_y)
#endregion

#region player variable updating
//update player damage
myDamage = global.food*0.5 + 10
//Check tier and food
myFood = global.food
myTier = global.tier
//do we want to keep checking each step?
if myFood >=30 {sprite_index=spr_bact_tier1b} //could check tier in obj_game
#endregion