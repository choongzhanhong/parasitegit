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
cooldown_lmb = 1//in seconds
cooldown_lmb_current =1

//attack damage
myDamage =10

//current HP and food level
knockback = false
knockback_timer = 0 //seconds
iframe_timer = 0

dead = false

#region Array of Sprites
//0: idle; 1: moving; 2: knocked back, 3: die
sprites = [spr_bact_idle, spr_bact_moving, spr_bact_kb, spr_bact_die]

#endregion end array

//create the aim reticule
instance_create_layer(x,y,"Effects_Fg",obj_aim)