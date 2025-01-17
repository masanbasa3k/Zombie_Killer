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
		var _damage = damage;
		var _damage_box = instance_create_layer(x+(image_xscale*16),y,"World",obj_enemy_damage)
		with(_damage_box)
		{
			damage = _damage;
			knockback = 10;
		}
		image_speed = 0;
		state_target = ENEMYSTATE.CHASE;
		state_wait_duration = 60;
		state = ENEMYSTATE.WAIT;
		sprite_index = spr_idle;
	}
}