/// @description Insert description here
// You can write your code in this editor
if instance_exists(my_collision)
{
	my_collision.x = x;
	my_collision.y = y;
	
	with(my_collision)
	{
		if (place_meeting(x,y,obj_player_damage))
		{
			take_damage = true;
			damage = obj_player_damage.damage;
			knockback = obj_player_damage.damage;
			if (obj_player.handHolding[obj_player.holding_number] != HAND.free)
			{
				global.inv[obj_player.holding_number][1] -= 1;
				if (global.inv[obj_player.holding_number][1] <= 0){global.inv[obj_player.holding_number] = [-1,-1];}
			}
		}
		else if (place_meeting(x,y,obj_bullet))
		{
			take_damage = true;
			damage = obj_bullet.damage;
			knockback = obj_bullet.damage;
		}
	}
}

// Inherit the parent event
event_inherited();

