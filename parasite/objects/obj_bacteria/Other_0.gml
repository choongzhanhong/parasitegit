/// @description change room
// You can write your code in this editor
global.CHECKPOINT.cp_food = global.food
if room == rm_1 {
	//set new checkpoint to next room's starting
	global.CHECKPOINT.cp_x = 112
	global.CHECKPOINT.cp_y = 15
	room_goto(rm_2)	
}
if room == rm_2 {
	global.CHECKPOINT.cp_x = 302
	global.CHECKPOINT.cp_y = 594
	room_goto(rm_3)	
}

//if room == rm_1_1{
//	room_goto(rm_1_2)
//}

//if room == rm_2_1 {
//	room_goto(rm_2_2)	
//}

//if room == rm_2_2 {
//	room_goto(rm_end)	
//}