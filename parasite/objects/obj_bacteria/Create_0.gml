/// @description Variables
// You can write your code in this editor

//Movespeed in pixels per second
move_speed = 100

//Array of movement inputs WASD
movement_inputs[0] = ord("D");
movement_inputs[1] = ord("W");
movement_inputs[2] = ord("A");
movement_inputs[3] = ord("S");

//Cooldowns
cooldown_lmb = 1 //1 seconds
cooldown_lmb_current =1 

//attack damage
myDamage =global.food*0.5 + 10

//current HP and food level
lives = 3
knockback = false
knockback_timer = 0 //seconds
myTier = global.tier
myFood = global.food 
//TODO: maybe just let it be tracked in obj_game

#region Array of Sprites
//0: idle; 1: moving; 2: knocked back
spriteTier[0] = [spr_bact_idle, spr_bact_moving, spr_bact_kb, spr_bact_die]
spriteTier[1] = [spr_bact_idle, spr_bact_moving, spr_bact_kb] // not in use currently
spriteTier[2] = [spr_bact_tier1b, spr_bact_moving, spr_bact_kb]
sprites = spriteTier[0]

#endregion end array

//create the aim reticule
instance_create_layer(x,y,"Effects_Bg",obj_aim)