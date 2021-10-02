/// @description Insert description here
// You can write your code in this editor

//update time
global.seconds_passed = delta_time/1000000;

//end game
if global.food >= 100 {
	room_goto_next()	
}