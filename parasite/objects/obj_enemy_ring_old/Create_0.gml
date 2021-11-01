/// @description Insert description here
// You can write your code in this editor
myMaxHP = 200
myHP = 200

healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1/3;
y_health_offset = -40;
x_health_offset = -17;


move_speed = 50
knockback = false
knockback_timer = 0
dead = false
weight = 8
cooldown_attack = 2
current_cooldown = 2
attacking = true
lockon = false

//0: aiming, 1: charging, 2: knockback, 3: die, 4: rest 
sprites = [spr_ring,spr_ring,spr_ring_kb,spr_ring_dead,spr_ring]


bullet_object = obj_miniboss_projectile;
bullet_speed = 1.5;
bullet_accel = 0;

base_angle = 0;
shoot = 0

bullets = 24;
spread = 345;

start_angle = 0;

total_arrays = 1;
array_spread = 0;

spin = 0;
spin_mod = 0;
spin_rev = 0;
max_spin_spd = 0;

fire_rate = 10;

object_width = 0;
object_height = 0;
x_offset = 0;
y_offset = 0; 

b_ang = spread/bullets;
