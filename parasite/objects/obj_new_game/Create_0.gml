/// @description Insert description here
// You can write your code in this editor

room_pointer = rm_1
action = function() {
	//reset all
	global.food = 0;
	global.dna = 0;
	global.collected_dna = []

	//reset struct
	global.CHECKPOINT = {
		cp_id : noone,
		cp_room : rm_1,
		cp_x : 80,
		cp_y : 142,
		cp_food : 0,
		cp_size : 1,
	}
	room_goto(room_pointer)	
}
sprites = [spr_menu_ng, spr_menu_ng2]
