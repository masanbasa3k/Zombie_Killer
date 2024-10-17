// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_zombie_die(){
	draw_health = false;
	sprite_index = spr_dead;
	
	var _distance_to_go = point_distance(x,y,xTo,yTo)
	if (_distance_to_go > enemy_speed)
	{
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(enemy_speed, dir);
		vSpeed = lengthdir_y(enemy_speed, dir);
		if (hSpeed != 0) image_xscale = -sign(hSpeed);
		scr_enemy_tile_collision();
	}
	else
	{
		x = xTo;
		y = yTo;
	}
	
	if (image_index + (sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps)) >= image_number)
	{
		image_speed = 0;
	}
	else
	{
		image_speed = 1.0;
	}
}