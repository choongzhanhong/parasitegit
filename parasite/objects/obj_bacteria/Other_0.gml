/// @description change room
// You can write your code in this editor
if room == rm_1 {
	//set new checkpoint to next room's starting
	global.cp_xy = [112,15]
	room_goto(rm_2)	
}
if room == rm_2 {
	global.cp_xy = [302,594]
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