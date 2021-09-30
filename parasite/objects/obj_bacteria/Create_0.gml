/// @description Variables
// You can write your code in this editor

//Movespeed in pixels per second
move_speed = 200

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
myHP = 100
myTier = global.tier
myFood = global.food

#region Array of Sprites
//0: idle; 1: moving; 2: eating; 3: knocked back
spriteTier[0] = [spr_bact_idle, spr_bact_moving, spr_bact_eat, spr_bact_kb]
spriteTier[1] = [spr_bact_idle, spr_bact_moving, spr_bact_eat, spr_bact_kb]
spriteTier[2] = [spr_bact_idle, spr_bact_moving, spr_bact_eat, spr_bact_kb]


#endregion end array