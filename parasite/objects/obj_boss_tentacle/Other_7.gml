/// @description Insert description here
// You can write your code in this editor
if sprite_index = sprites[3] {
	instance_destroy()	
}

//if knockback

if knockback {
	sprite_index = sprites[2]	
}
else { //back to idle
	sprite_index = sprites[0]	
}