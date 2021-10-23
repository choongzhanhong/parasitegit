// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function minus_lives(player){
	lives -= 1
	if lives <=0 {
			player.dead = true
			instance_destroy(obj_player_effects)
			player.sprite_index = player.sprites[3]
			global.food -= 20 {
				if global.food <= 0 {
					global.food = 0
				}
			}
	}
}