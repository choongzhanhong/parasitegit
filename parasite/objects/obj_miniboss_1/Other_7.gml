/// @description sprite
// You can write your code in this editor

if knockback {
	sprite_index = sprites[2]	
}
else if myHP > 300 {
	sprite_index = sprites[0]
}
else { //angry
	sprite_index = sprites[1]	
}