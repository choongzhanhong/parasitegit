/// @description attack
// You can write your code in this editor

//attack
if cooldown_lmb_current>=cooldown_lmb{
	var attack = instance_create_layer(x,y,"Effects_Bg",obj_attack)
	//get rid of aim reticle
	instance_destroy(obj_aim)
	instance_create_layer(x,y,"Effects_Bg", obj_cooldown)
	attack.image_angle = point_direction(x,y,mouse_x,mouse_y)
	cooldown_lmb_current=0
}