/// @description attack
// You can write your code in this editor

//attack
if cooldown_lmb_current>=cooldown_lmb{
var attack = instance_create_depth(x,y,0,obj_attack)
attack.image_angle = point_direction(x,y,mouse_x,mouse_y)
cooldown_lmb_current=0
}