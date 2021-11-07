/// @description Gradually move to player
// You can write your code in this editor
if speed >0 {
	speed -= random_range(0,0.1)
}
else {
	speed = 0	
}
if distance_to_object(obj_bacteria) < 32 {
	move_towards_point(obj_bacteria.x, obj_bacteria.y, 1)
}