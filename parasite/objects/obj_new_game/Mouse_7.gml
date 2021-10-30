/// @description Insert description here
// You can write your code in this editor
image_xscale = 1
image_yscale = 1

//reset all
global.food = 0;
global.dna = 0;
global.collected_dna = []

//reset struct
global.CHECKPOINT = {
	cp_room : rm_1,
	cp_x : 80,
	cp_y : 142,
	cp_food : 0,
	cp_size : 1,
}


room_goto(room_pointer)