/// @description Insert description here
// You can write your code in this editor

//always start room with max lives
lives = 3



if room == rm_2 {
	//create aim reticle again
instance_create_layer(x,y,"Effects_Fg",obj_aim)
	x = 112
	y = 15
}

if room == rm_3 {
	//create aim reticle again
instance_create_layer(x,y,"Effects_Fg",obj_aim)
	x=303
	y=593
}





//old
//change y var 
if room == rm_1_2 {
	y = 16
}

//2nd stage
if room == rm_2_1 {
	obj_game.tier = 1
	obj_game.food = 200
	obj_game.maxfood = 5
	
	//make the player shoot faster now
	cooldown_lmb = 0.8
	
	image_xscale = 1
	image_yscale = 1
	x = 100
	y = 145
	sprites = [spr_bact_2,spr_bact_2,spr_bact_2,spr_bact_2_die]
	sprite_index = sprites[0]
}

if room == rm_2_2 {
	x = 16	
}