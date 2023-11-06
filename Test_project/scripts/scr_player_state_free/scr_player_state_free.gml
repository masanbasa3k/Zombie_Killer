// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_free(){
	
	// Movement
	hSpeed = lengthdir_x(inputMagnitude * speedWalk, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * speedWalk, inputDirection);

	var _closestObj = instance_nearest(x, y, par_entity);
	var _closestObjDistance = point_distance(x, y, _closestObj.x, _closestObj.y)
	if (_closestObjDistance <= 32)
	{
		_closestObj.drawLine = true;
		if (_closestObj.entityTouchable)
		{
			if (keyUse) || (keyActivate)
			{
				scr_script_execute_array(_closestObj.entityActivateScript, _closestObj.entityActivateArgs);
				
				if (_closestObj.entityNPC)
				{
					with (_closestObj)
					{
						direction = point_direction(x,y,other.x,other.y);
					}
				}
			}
		}
		else if (_closestObj.entityBuilding) && (keyUse)
		{
			scr_script_execute_array(_closestObj.entityActivateScript,buildings.buildingMenu[_closestObj.buildingType]);
			obj_text_building.itemlistNuber = buildings.buildingMenuItem[_closestObj.buildingType]
			obj_text_building.itemlist = buildings.buildingItem[_closestObj.buildingType]
		}
		else if (_closestObj.entityDestroyable) && (player_hand.cooldown == 0) && (keyUse)
		{
			_closestObj.entityHp -= player_hand.handDamage[player_hand.state];
			player_hand.rotation = -70;
			player_hand.cooldown = 20;
		}
	}
	else
	{par_entity.drawLine = false;}
	
	
	// Player Collision
	scr_player_collision();

	// Update Sprite Index
	scr_player_animate_sprite();
	
	// Change item
	scr_player_change_hand();
	
	
	if (keyRoll)
	{	
		state = scr_player_state_roll;
		moveDistanceRemaining = distanceRoll;
	}
}