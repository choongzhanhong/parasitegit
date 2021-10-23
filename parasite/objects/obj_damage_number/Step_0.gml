/// @description Insert description here
// You can write your code in this editor
y -= 0.5
image_alpha -= 0.01
if image_alpha <= 0 {
	instance_destroy(self)
}