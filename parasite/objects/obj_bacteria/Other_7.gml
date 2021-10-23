/// @description animation end
// You can write your code in this editor

//death
if sprite_index == sprites[3]{
	room_goto(rm_end)
	//this seems to be ok
	instance_destroy(obj_bacteria)
}
//if knockback, play knockback animation instead
if knockback {
	sprite_index = sprites[2]
	
}

else {
	sprite_index = sprites[0] //back to idle	
}

