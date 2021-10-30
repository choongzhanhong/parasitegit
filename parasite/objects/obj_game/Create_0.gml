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

maxfood = 40;
//dna tier
if not variable_global_exists("dna") {
	global.dna = 0;
}
if not variable_global_exists("collected_dna") {
	global.collected_dna = []
}
//checkpoint room
if not variable_global_exists("checkpoint") {
	global.checkpoint = rm_1
}
//checkpoint coordinates
if not variable_global_exists("cp_xy") {
	global.cp_xy = [80,142]
}
//checkpoint food
if not variable_global_exists("cp_food") {
	global.cp_food = 0	
}

if not variable_global_exists("size") {
	global.size = 1
}

if not variable_global_exists("CHECKPOINT") {
	//create a struct
	global.CHECKPOINT = {
		
	}
}