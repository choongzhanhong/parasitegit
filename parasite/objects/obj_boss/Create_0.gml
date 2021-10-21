/// @description CREATE MINIBOSS
// You can write your code in this editor

knockback = false;
initial_knockback = true;
knockback_timer = 0;
move_speed = 200;
myHP=700;
myMaxHP = 700;

healthbar_width = 100;
healthbar_height = 12;
healthbar_scale = 1;
y_health_offset = -75;
x_health_offset = -55;

cooldown_attack = 0;
current_cooldown = 2;
dead = false;
weight = 10; //effectively means it wont get knocked back

sprites =[spr_miniboss_1,spr_miniboss_1_angry,spr_miniboss_1_hit,spr_miniboss_1_angry2];

/***************************************************
bullet_object - determines which object to use as a bullet
bullet_speed - determines how fast the bullets will move
bullet_accel - determines how quickly the bullet will accelerate or decelerate
***************************************************/

bullet_object = obj_miniboss_projectile;
bullet_speed = 2;
bullet_accel = 0;

/***************************************************
bullets - total number of bullets per bullet array
spread - how spread out the bullets in individual arrays should be
  
start_angle - the angle for the pattern to start at
  
total_arrays - how many bullet arrays there should be
array_spread - total spread between the first and last array
  
spin - the speed at which the arrays will be spinning when the script is first called
spin_mod - how quickly the spin rate will speed up. should be set to 0 if max spin speed is disabled.
spin_reverse - set to 1 if you want the spin rate to reverse once it reaches a certain threshhold
max_spin_spd - the max spin rate before reversal begins
  
fire_rate - how often the enemy should fire (higher=slower rate of fire)
  
object_width - how wide is the object that is firing
object_height - how tall is the object that is firing
x offset - the horizontal offset from the object's x origin
y offset - the vertical offset from the object's y origin
***************************************************/

base_angle = 0;
shoot = 0

bullets = 1;
spread = 0;

start_angle = 0;

total_arrays = 3;
array_spread = 240;

spin = 5;
spin_mod = 0;
spin_rev = 0;
max_spin_spd = 0;

fire_rate = 20;

object_width = 0;
object_height = 0;
x_offset = 0;
y_offset = 0; 

b_ang = spread/bullets;


ring_shoot_rate = 400;
ring_shoot = 0;
