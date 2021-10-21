/// @description CREATE MINIBOSS
// You can write your code in this editor

knockback = false;
initial_knockback = true;
knockback_timer = 0;
move_speed = 200;
myHP=25;
myMaxHP=25;

healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1/3;
y_health_offset = -23;
x_health_offset = -15;

cooldown_attack = 2;
current_cooldown = 2;
dead = false;
weight = 10; //effectively means it wont get knocked back
sprites =[spr_enemy_shooter,spr_enemy_shooter,spr_enemy_shooter_kb,spr_enemy_shooter_kb];
