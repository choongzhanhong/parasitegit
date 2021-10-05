/// @description health bar
// You can write your code in this editor

draw_self()

if knockback {
	var HP = myHP/myMaxHP*100
	draw_healthbar(x-16,y-20,x+16,y-16,HP,c_white,c_red,c_green,0,true,true) 
}