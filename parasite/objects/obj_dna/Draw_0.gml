/// @description Insert description here
// You can write your code in this editor
draw_self()

if count > 0 {
	var bar = count/maxCount
	draw_sprite_ext(spr_healthbar_bg, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
	draw_sprite_stretched(spr_dnabar, 0, x + x_health_offset, y + y_health_offset, ((bar)*healthbar_width)*healthbar_scale, healthbar_height*healthbar_scale)
	draw_sprite_ext(spr_healthbar_border, 0, x + x_health_offset, y + y_health_offset, healthbar_scale, healthbar_scale, 0, c_white, 1)
}