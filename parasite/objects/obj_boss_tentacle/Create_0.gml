/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
myMaxHP = 400
myHP = 400

healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1/3;
y_health_offset = -15;
x_health_offset = -13;

move_speed = 10 //old: 10px per second
knockback = false
knockback_timer = 0;
initial_knockback = 0
dead=false
weight = 10
//0: idle, 1: moving, 2: knockback, 3:die
sprites = [spr_boss_tentacle,spr_boss_tentacle,spr_boss_tentacle_kb,spr_boss_tentacle_death]