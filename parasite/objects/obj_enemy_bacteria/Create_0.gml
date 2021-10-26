/// @description Insert description here
// You can write your code in this editor
myMaxHP = 25
myHP = 25

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
weight = 2
//0: idle, 1: moving, 2: knockback, 3:die
sprites = [spr_bact_hostile_idle, spr_bact_hostile_moving, spr_bact_hostile_kb, spr_bact_hostile_die]