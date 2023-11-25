// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_wander(){
	sprite_index = spr_move;
	
	if ((x == xTo) && (y == yTo)) || (time_passed > enemy_wander_distance / enemy_speed)
	{
		hSpeed = 0;
		vSpeed = 0;
		if (image_index<1)
		{
			image_speed = 0.0;
			image_index = 0;
		}
		
		if (++wait >= wait_duration)
		{
			wait = 0;
			time_passed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45,45)
			xTo = lengthdir_x(enemy_wander_distance, dir)
			yTo = lengthdir_y(enemy_wander_distance, dir)
		}
	}
	else
	{
		time_passed++;
		var _distance_to_go = point_distance(x,y,xTo,yTo);
		var _speed_this_frame = enemy_speed;
		if (_distance_to_go < enemy_speed) {_speed_this_frame = _distance_to_go}
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_speed_this_frame, dir);
		vSpeed = lengthdir_y(_speed_this_frame, dir);
		if (hSpeed != 0){image_xscale=sign(hSpeed);}
		
		var _collided = scr_enemy_tile_collision();
		
	}

}