/// @description Insert description here
// You can write your code in this editor

if room==rm_menu {
	room_goto(rm_1_1)
	global.food = 0
	global.tier = 0
}

if room==rm_end or room==rm_win {
	room_goto(rm_menu)	
}