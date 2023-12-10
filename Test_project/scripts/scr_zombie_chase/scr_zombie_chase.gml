// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_chase(){
	enemy_speed = 1;
	image_speed = .3;
	sprite_index = spr_move;
	if (hSpeed != 0)
	{
		image_xscale = sign(hSpeed)
	}
	if (in_finding_path)
	{
		if (path_position >= 1)
		{
			in_finding_path = false;
		}
		exit;
	}
	if (instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemy_aggro_radius)
	{
		var _collide = scr_enemy_tile_collision();
		if (_collide)
		{
			alarm[1] = 10;
			mp_grid_clear_cell(obj_setup_pathway.grid, floor(x / 16), floor(y / 16));
			path_delete(path);
			path = path_add();
			mp_grid_path(obj_setup_pathway.grid, path, x, y, target.x, target.y,1);
			path_start(path, 1, path_action_stop, true);
			in_finding_path = true;
		}
		else
		{
			xTo = target.x;
			yTo = target.y;
			var _distance_to_go = point_distance(x,y,xTo,yTo);
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
		}
	}
	else
	{
		
		if (x != xTo) && (y != yTo) && (!in_finding_path)
		{
			var _collide = scr_enemy_tile_collision();
			if (_collide)
			{
				scr_enemy_path_finding(xTo,yTo)
				in_finding_path = true;
			}
			else
			{
				var _distance_to_go = point_distance(x,y,xTo,yTo);
				image_speed = .3;
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
			}
		}
		else
		{
			sprite_index = spr_idle;
			image_index = 0;
			image_speed = 0;
			hSpeed = 0;
			vSpeed = 0;
			state = ENEMYSTATE.WANDER;
		}
	}
	if (instance_exists(target)) && (point_distance(x,y,target.x,target.y) <= enemy_attack_radius)
	{
		state = ENEMYSTATE.ATTACK;
		sprite_index = spr_attack;
		image_index = 0;
		image_speed = 1.0;
	}
}