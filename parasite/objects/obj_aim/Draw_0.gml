/// @description draw only when able to attack
// You can write your code in this editor

if (obj_bacteria.cooldown_lmb_current>=obj_bacteria.cooldown_lmb) and !(obj_bacteria.dead or obj_bacteria.knockback) {
	draw_self()	
}