// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_chase(){
	if (instance_exists(target))
	{
		xTo = target.x;
		yTo = target.y;
		
		var _distance_to_go = point_distance(x,y,xTo,yTo);
		image_speed = 1.0;
		dir = point_direction(x,y,xTo,yTo)
		if (_distance_to_go > enemy_speed)
		{
			hSpeed = lengthdir_x(enemy_speed, dir);
			vSpeed = lengthdir_y(enemy_speed, dir);
		}
		else
		{
			hSpeed = lengthdir_x(_distance_to_go, dir);
			vSpeed = lengthdir_y(_distance_to_go, dir);
		}
		scr_enemy_tile_collision();
		
		if (point_distance(x,y,target.x,target.y) <= enemy_attack_radius)
		{
			state = ENEMYSTATE.ATTACK;
			sprite_index = spr_attack;
			image_index = 0;
			image_speed = 1.0;
			xTo += lengthdir_x(8,dir);
			yTo += lengthdir_y(8,dir);
		}
	}
	
}