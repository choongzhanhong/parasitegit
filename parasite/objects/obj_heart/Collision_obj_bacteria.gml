/// @description Insert description here
// You can write your code in this editor

if lives < 3 {
	lives+=1
	instance_create_layer(x,y,"Effects_Fg", obj_life)
	instance_destroy(self)
}