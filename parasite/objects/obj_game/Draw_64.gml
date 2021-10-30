/// @description foodmeter
// You can write your code in this editor


if (room==rm_1 or room==rm_2 or room==rm_3)  {
draw_set_halign(fa_left)

// FOOD UI
draw_text(50, 20, "FOOD: ")
draw_sprite_ext(spr_foodbar_bg, 0, 100, 26, 3, 3, 0, c_white, 1)
draw_sprite_stretched(spr_foodbar, 0, 100, 26, (((global.food%maxfood)/maxfood)*78)*3, 3*3)
draw_sprite_ext(spr_foodbar_border, 0, 100, 26, 3, 3, 0, c_white, 1)
draw_text(350,20,"("+string(global.food)+")")
	
// LIFE UI
for (var i=0; i<4; i++){
	draw_sprite(spr_life_empty, 0, 75+(i*64), 80)
}

for (var i=0; i<lives; i++) {
	if (i < 4) {
		draw_sprite(spr_life, 0, 75+(i*64), 80)
	} else {
		draw_sprite(spr_life_extra, 0, 75+(i*64), 80)	
	}
	if (i == 5) {
		draw_sprite(spr_life_max, 0, 72+(6*64), 83)
	}
}

// DNA UI
draw_text(870,20,": "+string(global.dna))
draw_sprite(spr_dna,0,850,32)

draw_set_halign(fa_center)

}

//draw pause text
if paused {
	draw_rectangle_color(300,480,700,580,c_purple,c_purple,c_black,c_black,false)
	draw_text(500,500,"PAUSED")	
	draw_text(500,520,"Press R to restart room from checkpoint")
	draw_text(500,540,"Press M to return to menu")	
}

else {
	
}