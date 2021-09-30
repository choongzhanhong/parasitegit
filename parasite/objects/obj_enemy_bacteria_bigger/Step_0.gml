/// @description step
// You can write your code in this editor

//check hp
if myHP <= 0 { instance_destroy()}

//TODO movement
move_speed = 20

//knockbacks
if speed > 0{ 
	speed=speed-0.02
}
else {
sprite_index = spr_bact_hostile_bigger	
}
//if player is big enough
if obj_bacteria.myDamage >= 50 {sprite_index=spr_bact_hostile_bigger_edible}