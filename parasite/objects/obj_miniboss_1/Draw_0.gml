/// @description Insert description here
// You can write your code in this editor


//i suppose this is needed
draw_self()

if knockback {
	 
	var HP = myHP/5
	draw_healthbar(x-64,y-100,x+64,y-90,HP,c_white,c_red,c_green,0,true,true) 
}