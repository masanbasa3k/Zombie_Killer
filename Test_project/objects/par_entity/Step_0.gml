
entityPC = (entityHp / entityMaxHp) * 100;

if (entityHp <= 0)
{
	
	if (array_length(entityDrop) == 1) && (entityDrop[0] != -1)
	{scr_instance_create_item(x, y, entityDrop[0]);}
	else
	{
		for (var i=0; i<entityDrop[array_length(entityDrop)-1]; i++)
		{
			scr_instance_create_item(x, y, entityDrop[i]);
		}
	}
	
	instance_destroy();
}

if(place_meeting(x,y,obj_player_damage)) && (entityDestroyable) && (entityIsEnemy == false)
{
	
	entityHp -= obj_player_damage.damage
	flash = 1;
	instance_destroy(obj_player_damage)
	if (obj_player.handHolding[obj_player.holding_number] != HAND.free)
	{
		global.inv[obj_player.holding_number][1] -= 1;
		if (global.inv[obj_player.holding_number][1] <= 0){global.inv[obj_player.holding_number] = [-1,-1];}
	}
}