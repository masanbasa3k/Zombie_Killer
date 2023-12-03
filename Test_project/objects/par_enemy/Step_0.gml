/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (enemy_script[state] != -1) script_execute(enemy_script[state])
depth = -bbox_bottom;

if(place_meeting(x,y,obj_player_damage)) && (entityDestroyable) && (entityIsEnemy == true)
{
	if (state != ENEMYSTATE.DIE)
	{
		entityHp -= obj_player_damage.damage;
		_knockback = obj_player_damage._knockback;
		flash = 1;
		if (entityHp<=0)
		{
			state = ENEMYSTATE.DIE;
		}
		else
		{
			if (state != ENEMYSTATE.HURT) state_previous = state;
			state = ENEMYSTATE.HURT;
		}
		image_index = 0;
		if (_knockback != 0)
		{
			var _knock_direction = point_direction(x,y,(_source.x),(_source.y))
			xTo = x - lengthdir_x(_knockback, _knock_direction)
			yTo = y - lengthdir_y(_knockback, _knock_direction)

		}
	}
	
	instance_destroy(obj_player_damage)
	if (obj_player.handHolding[obj_player.holding_number] != HAND.free)
	{
		global.inv[obj_player.holding_number][1] -= 1;
		if (global.inv[obj_player.holding_number][1] <= 0){global.inv[obj_player.holding_number] = [-1,-1];}
	}
}



