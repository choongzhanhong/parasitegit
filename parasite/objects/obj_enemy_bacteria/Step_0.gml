/// @description step
// You can write your code in this editor

//check hp
if myHP <= 0 { instance_destroy()}


var move_xinput = 0;
var move_yinput = 0;
//TODO movement
var move_speed_this_frame = move_speed*global.seconds_passed;
var this_angle = point_direction(x,y,obj_bacteria.x,obj_bacteria.y);
	//the x direction
move_xinput += lengthdir_x(1, this_angle);
		
//Change sprite direction if moving left/right
if move_xinput<0 {image_xscale = abs(image_xscale)*-1}
else {image_xscale = abs(image_xscale)*1}	
//move in y direction
move_yinput += lengthdir_y(1, this_angle);
var move_dir = point_direction(0,0,move_xinput,move_yinput);
move(move_speed_this_frame,  move_dir);
