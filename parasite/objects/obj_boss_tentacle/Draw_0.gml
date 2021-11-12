/// @description Insert description here
// You can write your code in this editor
draw_self()


x_health_offset = lengthdir_x(128,image_angle)
y_health_offset = lengthdir_y(128,image_angle) 


if knockback and not dead {
	draw_sprite_ext(spr_healthbar_bg, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
	draw_sprite_stretched(spr_healthbar, 0, x + x_health_offset, y + y_health_offset, ((myHP/myMaxHP)*healthbar_width)*healthbar_scale, healthbar_height*healthbar_scale)
	draw_sprite_ext(spr_healthbar_border, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)	
}