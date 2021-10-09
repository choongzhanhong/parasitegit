/// @description Insert description here
// You can write your code in this editor

if room==rm_menu {
	room_goto(rm_1_1)
	obj_game.food = 0
	obj_game.tier = 0
}

if room==rm_end or room==rm_win {
	game_restart()
}