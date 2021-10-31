/// @description Set checkpoint
// You can write your code in this editor

//if checkpoint has not already been set, set it

if other.image_index == 0 {
	other.image_index = 1
	global.CHECKPOINT.cp_id = other.id
	global.CHECKPOINT.cp_x = other.x
	global.CHECKPOINT.cp_y = other.y
	global.CHECKPOINT.cp_food = global.food
	var notif = instance_create_layer(x,y,"Effects_Fg", obj_player_msg)
	notif.msg = "Checkpoint Saved"
}