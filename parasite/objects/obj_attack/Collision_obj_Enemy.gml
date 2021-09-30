/// @description Hit enemy
// You can write your code in this editor



with(other)
{
	if !other.hit{
		myHP -= obj_bacteria.myDamage
		other.hit=true
	} //deal attack damage if it hasn't been hit
}

//There should be a better way to make it hit 
