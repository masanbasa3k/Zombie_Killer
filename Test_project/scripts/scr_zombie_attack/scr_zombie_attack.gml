// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_attack(){
	scr_enemy_tile_collision();
	hSpeed = 0;
	vSpeed = 0;
	sprite_index = spr_attack;
	image_speed = 1;
	if (floor(image_index)==7)
	{
		image_speed = 0;
		state_target = ENEMYSTATE.CHASE;
		state_wait_duration = 60;
		state = ENEMYSTATE.WAIT;
		sprite_index = spr_idle;
	}
}