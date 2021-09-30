/// @description Insert description here
// You can write your code in this editor

//Knockback Script
with(other){
other.direction=point_direction(x,y,other.x,other.y)
other.speed = 2
other.sprite_index = spr_bact_hostile_bigger_hit
}