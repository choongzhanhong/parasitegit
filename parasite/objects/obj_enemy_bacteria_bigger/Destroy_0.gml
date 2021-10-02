/// @description Destroy
// You can write your code in this editor

//Create 5 edibles in the Edibles instance layer
repeat(10) {
	edible = instance_create_layer(x,y,"Edibles",obj_edible)
	edible.direction = random(360)
	edible.speed = 1
	
}