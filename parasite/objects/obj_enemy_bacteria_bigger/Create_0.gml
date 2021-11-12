/// @description Insert description here
// You can write your code in this editor
myMaxHP = 70
myHP = 70

healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1/3;
y_health_offset = -23;
x_health_offset = -17;

move_speed = 20 
knockback = false
knockback_timer = 0;
dead=false
weight = 5

cooldown_attack = 2
current_cooldown = 2
//0:idle, 1: moving, 2: knockback, 3: die
sprites = [spr_bact_hostile_bigger_idle,spr_bact_hostile_bigger_moving,spr_bact_hostile_bigger_kb,spr_bact_hostile_bigger_die]

myTelegraph = instance_create_layer(x,y,"Effects_Fg",obj_telegraph_small)