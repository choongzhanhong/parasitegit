/// @description foodmeter
// You can write your code in this editor


if not (room==rm_menu or room==rm_end or room==rm_win) {
var food = global.food //max is 200
draw_healthbar(850,800, 900, 900, food/2, c_white, c_red, c_lime, 3, true, true)
draw_text(850,900, "FOOD: "+string(food))

draw_text(80,80, "LIVES")
for (var i=0; i<lives; i++) {
	draw_sprite(spr_life,3,64 + (i*64), 64)	
	}
}

//draw pause text
if paused {
	draw_text(500,500,"PAUSED")	
}