/// @description Insert description here
// You can write your code in this editor

with(obj_enemy_damage)
{
	if (place_meeting(x,y,other))
	{
		instance_destroy();
		other.entityHp -= damage
		other.flash = 1;
	}
}

flash = max(flash-0.04, 0)
