/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,obj_bacteria) {
	count+=global.seconds_passed
	if count >= maxCount {
		global.dna+=1
		
		var notif = instance_create_layer(x,y,"Effects_Fg", obj_player_msg)
		notif.msg = "Size UP!"
		//add dna to global collection
		array_push(global.collected_dna, id)
		
		var len = array_length(global.collected_dna)
		
		if len >= 6 {room_goto(rm_win)}
		//change size here
		size_array = [0.25, 0.5, 0.75, 0.95, 1.15, 1.5]
		var _size = 1 + size_array[len-1]
		global.CHECKPOINT.cp_size = _size
		obj_bacteria.image_xscale = _size
		obj_bacteria.image_yscale = _size
		instance_destroy()
	}
}
else {
	count=0
}