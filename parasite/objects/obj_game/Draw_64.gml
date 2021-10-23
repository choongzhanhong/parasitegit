/// @description foodmeter
// You can write your code in this editor


if (room==rm_1 or room==rm_2 or room==rm_3)  {
//var food_percentage = (food%maxfood)/maxfood*100 //max is 40
//draw_healthbar(850,800, 900, 900, food_percentage, c_white, c_red, c_lime, 3, true, true)
//draw_text(850,900, "FOOD: "+string(food))

draw_text(75, 20, "FOOD: ")
draw_sprite_ext(spr_foodbar_bg, 0, 100, 26, 3, 3, 0, c_white, 1)
draw_sprite_stretched(spr_foodbar, 0, 100, 26, (((global.food%maxfood)/maxfood)*78)*3, 3*3)
draw_sprite_ext(spr_foodbar_border, 0, 100, 26, 3, 3, 0, c_white, 1)
	

//draw_text(80,80, "LIVES")
for (var i=0; i<lives; i++) {
	draw_sprite(spr_life,0,75 + (i*64), 80)	
	}

draw_text(400,20,"DNA: "+string(global.dna))
}

//draw pause text
if paused {
	draw_text(500,500,"PAUSED")	
	draw_text(500,600,"Press R to Restart")	
}

else {
	
}