/// @description Global Variables
// You can write your code in this editor

global.seconds_passed = 0;

//window_set_size( 900, 900 ); //don't know if this is necessary

/*
This section is to keep track of the player's FOOD and TIER.
*/
if not variable_global_exists("food") {
	global.food = 0;
}
maxfood = 40;

//dna tier
if not variable_global_exists("dna") {
	global.dna = 0;
}

paused = false
lives = 3


//make all text centered
draw_set_halign(fa_center);

if not variable_global_exists("checkpoint") {
	global.checkpoint = rm_1
}
if not variable_global_exists("cp_xy") {
	global.cp_xy = [80,142]
}