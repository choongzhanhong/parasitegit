/// @description Eat Edible
// You can write your code in this editor
with(other){ //other is player
	//destroy the edible	
	instance_destroy()
	global.food+= 2
	if (obj_bacteria.sprite_index !=  obj_bacteria.spriteTier[obj_bacteria.myTier][2])
	{
		obj_bacteria.sprite_index = obj_bacteria.spriteTier[obj_bacteria.myTier][2] 
	}//get the eating animation
}

//maybe can do case and switch
if obj_bacteria.myFood >= 70 {
	global.tier = 2
}
else if obj_bacteria.myFood >= 30 {
	global.tier =1	
}