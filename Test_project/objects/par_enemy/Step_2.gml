/// @description Insert description here
// You can write your code in this editor
if instance_exists(my_collision)
{
	my_collision.x = x;
	my_collision.y = y;
	
	with(obj_player_damage)
	{
		if (place_meeting(x,y,other.my_collision))
		{
			instance_destroy();
			other.my_collision.take_damage = true;
			other.my_collision.damage = damage;
			other.my_collision.knockback = damage;
			if (obj_player.handHolding[obj_player.holding_number] != HAND.free)
			{
				global.inv[obj_player.holding_number][1] -= 1;
				if (global.inv[obj_player.holding_number][1] <= 0){global.inv[obj_player.holding_number] = [-1,-1];}
			}
		}
	}
	
	with(obj_bullet)
	{
		if (place_meeting(x,y,other.my_collision))
		{
			other.my_collision.take_damage = true;
			other.my_collision.damage = damage;
			other.my_collision.knockback = damage;
			instance_destroy();
		}
	}
}
// Inherit the parent event
event_inherited();

