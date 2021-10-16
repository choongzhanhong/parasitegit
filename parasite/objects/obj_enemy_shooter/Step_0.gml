/// @description Insert description here
// You can write your code in this editor

if current_cooldown <= 0 {

	var attack = instance_create_layer(x,y,"Effects_Fg",obj_miniboss_projectile)
	attack.direction = image_angle
	attack.speed = 2
	current_cooldown = cooldown_attack//it will fire every current_cooldown seconds.
}	
else {
	current_cooldown -= global.seconds_passed	
}


if knockback_timer > 0 {
	knockback_timer -= global.seconds_passed	
}
else {
	knockback = false
	knockback_timer = 0	
}

if myHP <= 0 {
	instance_destroy()
}