/// @description sprite
// You can write your code in this editor

//death
if sprite_index = sprites[3] {
	instance_destroy(self)
}

if knockback {
	sprite_index = sprites[2] //knockback
}

//normal
else if myHP >700 {
	sprite_index = sprites[0]	
}
//angry1
else if myHP > 350  {
	sprite_index = sprites[1]
}
else { //angry2
	sprite_index = sprites[4]	
}