// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_hurt(){
	enemy_speed = 0.5;
	image_speed = .2;
	sprite_index = spr_hurt;
	var _enemy_speed = enemy_speed*(knockback/10)
	var _distance_to_go = point_distance(x,y,xTo,yTo)
	if (_distance_to_go > _enemy_speed)
	{
		image_speed = 1;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_enemy_speed, dir);
		vSpeed = lengthdir_y(_enemy_speed, dir);
		if (hSpeed != 0)image_xscale = -sign(hSpeed);
		
		if (scr_enemy_tile_collision())
		{
			xTo = x;
			yTo = y;
		}
	}
	else
	{
		x = xTo;
		y = yTo;
		if (state_previous != ENEMYSTATE.ATTACK) state = state_previous; else state = ENEMYSTATE.CHASE;
	}
}