/// @description Insert description here
// You can write your code in this edito
sprite_index = spr_BUTON_1

with obj_cage_b {
	if key == other.key {
		//open the door with the same key
		instance_destroy()
		//solid = false
		//image_alpha = 0.2
	}
}
