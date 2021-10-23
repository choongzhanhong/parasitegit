/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_bacteria) {
	count+=global.seconds_passed
	if count >= 1.5 {
		global.dna+=1
		obj_bacteria.image_xscale *=1.1
		obj_bacteria.image_yscale *=1.1
		instance_destroy()
	}
}
else {
	count=0
}