/// @description sprite
// You can write your code in this editor

//death
if sprite_index = sprites[3] {
	instance_destroy(self)
}

if knockback {
	sprite_index = sprites[2] //knockback	
}

else if myHP > 350  {
	sprite_index = sprites[0]
}
else { //angry
	sprite_index = sprites[1]	
}