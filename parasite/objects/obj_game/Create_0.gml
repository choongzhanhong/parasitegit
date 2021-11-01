/// @description Global Variables
// You can write your code in this editor

global.seconds_passed = 0;

//window_set_size( 900, 900 ); //don't know if this is necessary

/*
This section is to keep track of the player's FOOD and TIER.
*/


paused = false
lives = 3
maxfood = 40;

//make all text centered
draw_set_halign(fa_center);


if not variable_global_exists("food") {
	global.food = 0;
}
//dna tier
if not variable_global_exists("dna") {
	global.dna = 0;
}
if not variable_global_exists("collected_dna") {
	global.collected_dna = []
}


//CHECKPOINT STRUCT
if not variable_global_exists("CHECKPOINT") {
	//create a struct
	global.CHECKPOINT = {
		cp_id : noone,
		cp_room : rm_1,
		cp_x : 80,
		cp_y : 142,
		cp_food : 0,
		cp_size : 1,
	}
}


lose = false