/// @description break only if enough damage
// You can write your code in this editor

with(other){
	if obj_game.food >= 100 {
	instance_destroy(other)
	}
}