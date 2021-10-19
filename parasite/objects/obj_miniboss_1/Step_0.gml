/// @description Insert description here
// You can write your code in this editor

if cooldown_attack <= 0 {
	var attack = instance_create_layer(x,y,"Effects_Fg",obj_miniboss_projectile)
	attack.direction = point_direction(x,y,obj_bacteria.x,obj_bacteria.y)
	attack.speed = 2
	cooldown_attack= current_cooldown //it will fire every current_cooldown seconds.
}	
else {
	cooldown_attack -= global.seconds_passed	
}


if knockback_timer > 0 {
	knockback_timer -= global.seconds_passed	
}
else {
	knockback = false
	knockback_timer = 0	
}


if myHP <= 350 {
	current_cooldown = 1 //enraged, fire rate increase	
}
if myHP <= 200 {
	current_cooldown = 0.5 //enraged, fire rate increase	
}
if myHP <= 0 {
	instance_destroy()
	
}