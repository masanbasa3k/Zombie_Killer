/// @description Insert description here
// You can write your code in this editor

entityPC = (entityHp / entityMaxHp) * 100;
if (entityHp < entityMaxHp)
{
	draw_health = true;
}

if (enemy_script[state] != -1) script_execute(enemy_script[state])
depth = -bbox_bottom;

if (state != ENEMYSTATE.DIE)
{
	mask_index = spr_idle;
}
else
{
	mask_index = -1;
}


if (instance_exists(my_collision)) &&(my_collision.take_damage) && (entityDestroyable) && (entityIsEnemy == true)
{
	my_collision.take_damage = false;
	if (state != ENEMYSTATE.DIE)
	{
		entityHp -= my_collision.damage;
		knockback = my_collision.knockback;

		flash = 1;
		if (entityHp<=0)
		{
			global.player_xp += enemy_drop_xp;
			state = ENEMYSTATE.DIE;
			alarm[0] = 240;
			instance_destroy(my_collision)
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
}



