/// @description Set checkpoint
// You can write your code in this editor

//if checkpoint has not already been set, set it
if other.image_index == 0 {
	other.image_index = 1
	global.cp_xy = [obj_bacteria.x,obj_bacteria.y]
}