/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_bacteria) {
	count+=global.seconds_passed
	if count >= 1.5 {
		obj_game.tier+=1
		instance_destroy()
	}
}
else {
	count=0
}