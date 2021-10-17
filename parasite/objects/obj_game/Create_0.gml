/// @description Global Variables
// You can write your code in this editor

global.seconds_passed = 0;

//window_set_size( 900, 900 ); //don't know if this is necessary

/*
This section is to keep track of the player's FOOD and TIER.
*/

food = 0;
maxfood = 2;
//Tier 0: max 200
//Tier 1: max 500
//Tier 2: max 1000
//Tier 3: max 2000

tier = 0;

paused = false
lives = 3


//make all text centered
draw_set_halign(fa_center);

checkpoint = rm_1