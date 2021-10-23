/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_bacteria) {
	count+=global.seconds_passed
	if count >= maxCount {
		global.dna+=1
		obj_bacteria.image_xscale *=1.1
		obj_bacteria.image_yscale *=1.1
		//add dna to global collection
		array_push(global.collected_dna, id)
		instance_destroy()
	}
}
else {
	count=0
}