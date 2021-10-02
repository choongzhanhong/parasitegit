/// @description gradually get smaller
// You can write your code in this editor

image_xscale -= 0.02
image_yscale -= 0.02

if image_xscale <= 0 {
	instance_destroy()	
}

if speed > 0 {
	speed -= 0.2
}
else {
	speed = 0
}