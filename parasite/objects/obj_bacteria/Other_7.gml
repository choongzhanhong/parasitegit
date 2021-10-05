/// @description animation end
// You can write your code in this editor

if sprite_index == sprites[3]{
	room_goto(rm_end)		
}
//if knockback, play knockback animation instead
if knockback {
	sprite_index = sprites[2]
	
}

else {
	sprite_index = sprites[0] //back to idle	
}

