/// @description Insert description here
// You can write your code in this editor

if room=Menu {
	room_goto(Room1)
	global.food = 0
	global.tier = 0
}

if room=End {
	room_goto(Menu)	
}