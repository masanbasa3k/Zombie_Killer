/// @description Insert description here
// You can write your code in this editor

entityPC = (entityHp / entityMaxHp) * 100;
if (entityHp < entityMaxHp)
{
	draw_health = true;
}

if (enemy_script[state] != -1) script_execute(enemy_script[state])
depth = -bbox_bottom;

if(place_meeting(x,y,obj_player_damage)) && (entityDestroyable) && (entityIsEnemy == true)
{
	if (state != ENEMYSTATE.DIE)
	{
		entityHp -= obj_player_damage.damage;
		knockback = obj_player_damage.knockback;

		flash = 1;
		if (entityHp<=0)
		{
			state = ENEMYSTATE.DIE;
			alarm[0] = 120;
		}
		else
		{
			if (state != ENEMYSTATE.HURT) state_previous = state;
			state = ENEMYSTATE.HURT;
		}
		image_index = 0;
		if (knockback != 0)
		{
			var _knock_direction = point_direction(x,y,(obj_player.x),(obj_player.y))
			xTo = x - lengthdir_x(knockback, _knock_direction)
			yTo = y - lengthdir_y(knockback, _knock_direction)
		}
	}
	
	instance_destroy(obj_player_damage)
	if (obj_player.handHolding[obj_player.holding_number] != HAND.free)
	{
		global.inv[obj_player.holding_number][1] -= 1;
		if (global.inv[obj_player.holding_number][1] <= 0){global.inv[obj_player.holding_number] = [-1,-1];}
	}
}



