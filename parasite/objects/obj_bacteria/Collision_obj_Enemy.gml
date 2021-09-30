/// @description collide with enemies
// You can write your code in this editor

//if bact is big enough, it will just straight away eat.
with(other) {
	if other.myDamage >= myHP {
		instance_destroy()
	}
}


