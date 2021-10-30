/// @description Insert description here
// You can write your code in this editor

if room == rm_1 or room == rm_2 or room == rm_3 {
	if not instance_exists(obj_bacteria) {
		instance_create_layer(0,0,"Entities",obj_bacteria)	
	}
	global.checkpoint = room	
}