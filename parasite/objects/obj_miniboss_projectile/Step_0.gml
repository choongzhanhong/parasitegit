/// @description for funz
// You can write your code in this editor

if trail <= 0 {
	instance_create_layer(x,y,"Effects_Bg",obj_trail)
	trail = 0.1
}
else {
	trail -= global.seconds_passed	
}