/// @description Destroy
// You can write your code in this editor

//Create 5 edibles in the Edibles instance layer
audio_play_sound(sound_enemy_bacteria_death, 5, false)
repeat(40) {
	var xx = lengthdir_x(128,image_angle)
	var yy = lengthdir_y(128,image_angle)
	instance_create_layer(x+xx,y+yy,"Edibles",obj_edible)
}
if instance_exists(obj_boss){
	obj_boss.myHP -=1000
	obj_boss.knockback = true
	obj_boss.knockback_timer = 0.5
}