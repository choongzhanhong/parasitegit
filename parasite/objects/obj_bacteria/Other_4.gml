/// @description Insert description here
// You can write your code in this editor

//always start room with max lives
lives = 4
x = global.CHECKPOINT.cp_x
y = global.CHECKPOINT.cp_y
image_xscale = global.CHECKPOINT.cp_size
image_yscale = global.CHECKPOINT.cp_size

if room == rm_1 or room==rm_2 or room==rm_3 {
	if not instance_exists(obj_aim){
		instance_create_layer(x,y,"Effects_Fg",obj_aim)
	}
}
