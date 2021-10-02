/// @description animation end
// You can write your code in this editor

//if knockback, play knockback animation instead
if knockback {
	sprite_index = sprites[2]
}

if (sprite_index == spriteTier[myTier][2]) {
	sprite_index = spriteTier[myTier][0] //back to idle	
}