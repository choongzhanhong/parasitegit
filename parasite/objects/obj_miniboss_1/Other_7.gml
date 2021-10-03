/// @description sprite
// You can write your code in this editor

if knockback {
	sprite_index = sprites[2] //knockback	
}

else if myHP > 350  {
	sprite_index = sprites[0]
}
else if myHP > 200{ //angry
	sprite_index = sprites[1]	
}
else { //super angry
	sprite_index = sprites[3]	
}