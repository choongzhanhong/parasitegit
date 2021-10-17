/// @description foodmeter
// You can write your code in this editor


if (room==rm_1 or room==rm_2 or room==rm_3)  {
var food_percentage = (food%maxfood)/maxfood*100 //max is 40
draw_healthbar(850,800, 900, 900, food_percentage, c_white, c_red, c_lime, 3, true, true)
draw_text(850,900, "FOOD: "+string(food))

//draw_text(80,80, "LIVES")
for (var i=0; i<lives; i++) {
	draw_sprite(spr_life,0,64 + (i*64), 64)	
	}

draw_text(80,100,"DNA: "+string(obj_game.tier))
}

//draw pause text
if paused {
	draw_text(500,500,"PAUSED")	
	draw_text(500,600,"Press R to Restart")	
}

else {
	
}