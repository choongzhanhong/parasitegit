/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_bacteria) {
	count+=global.seconds_passed
	if count >= maxCount {
		global.dna+=1
		
		
		//add dna to global collection
		array_push(global.collected_dna, id)
		
		//change size here
		size_array = [0.3, 0.6, 0.9, 1.1, 1.3]
		var _size = 1 + size_array[array_length(global.collected_dna)-1]
		global.CHECKPOINT.cp_size = _size
		obj_bacteria.image_xscale = _size
		obj_bacteria.image_yscale = _size
		instance_destroy()
	}
}
else {
	count=0
}