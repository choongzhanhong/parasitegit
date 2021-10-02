/// @description create trails
// You can write your code in this editor

repeat(8){
	trail = instance_create_layer(other.x,other.y,"Effects_Fg",obj_trail)
	trail.direction = random(360)
	trail.speed = 2
}