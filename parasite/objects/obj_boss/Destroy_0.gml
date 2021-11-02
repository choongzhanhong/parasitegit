/// @description destroy!
// You can write your code in this editor

audio_play_sound(sound_miniboss_1_death, 5, false)

repeat(30){
	instance_create_layer(x,y,"Edibles", obj_edible)
}

instance_destroy(myEye)
with obj_boss_tentacle {
	instance_destroy()	
}
instance_destroy(obj_miniboss_projectile)
instance_create_layer(x,y,"Edibles", obj_dna)