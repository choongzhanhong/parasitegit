/// @description Insert description here
// You can write your code in this editor

if paused or lose {
	instance_activate_all();
	room_restart()
	paused=false
	lose=false
	obj_bacteria.dead = false
}