/// @description CREATE MINIBOSS
// You can write your code in this editor

knockback = false;
initial_knockback = true;
knockback_timer = 0;
move_speed = 200;
myHP = 200;
myMaxHP = 200;

angry1 = myMaxHP/2;
angry2 = myMaxHP/4;






healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1/3;
y_health_offset = -40;
x_health_offset = -17;

cooldown_attack = 0;

//2 seconds per shot
current_cooldown = 2;


dead = false;
weight = 10; //effectively means it wont get knocked back

//0: normal, 1: angry, 2: kb, 3: very angry
sprites =[spr_miniboss_a,spr_miniboss_b,spr_miniboss_kb,spr_miniboss_c];

myEye = instance_create_layer(x,y,"Effects_Fg",obj_miniboss_eye);
