/// @description Gradually reduce speed
// You can write your code in this editor

//only if it's greater
//Do i want to use delta time ?



//TODO: maybe implement this for the enemies also
//thinking if i want to use this dumb movement function or just have it point to 
if distance_to_object(obj_bacteria) <= 16 {
	direction = point_direction(x,y,obj_bacteria.x,obj_bacteria.y)
	speed = 0.5
}
else {
	if speed > 0{ 
		speed=speed-0.02
	}
}