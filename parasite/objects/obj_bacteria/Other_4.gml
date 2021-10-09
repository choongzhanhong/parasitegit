/// @description Insert description here
// You can write your code in this editor

//always start room with max lives
lives = 3

//change y var 
if room == rm_1_2 {
	y = 16
}

//2nd stage
if room == rm_2_1 {
	obj_game.tier = 1
	image_xscale = 1
	image_yscale = 1
	x = 100
	y = 145
	sprites = [spr_bact_2,spr_bact_2,spr_bact_2,spr_bact_2_die]
	sprite_index = sprites[0]
}