// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_attack(){
	var _spd = enemy_speed;
	
	if (image_index < 2){_spd = 0;}
	
	if (floor(image_index) == 3) || (floor(image_index) == 5)
	{image_index = 0}
	
	var _distance_to_go = point_direction(x,y,xTo,yTo);
	
	if(_distance_to_go < 4) && (image_index < 5) image_speed = 1.0;
	
	if (_distance_to_go > _spd)
	{
		dir =  point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_spd,dir);
		vSpeed = lengthdir_y(_spd,dir);
		
		if (scr_enemy_tile_collision() == true)
		{
			xTo = x;
			yTo = y;
		}
	}
	else
	{
		x = xTo;
		y = yTo;
		if (floor(image_index) == 5)
		{
			state_target = ENEMYSTATE.CHASE;
			state_wait_duration = 15;
			state = ENEMYSTATE.WAIT;
		}
	}
}