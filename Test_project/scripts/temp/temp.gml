// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function temp(){
	
	// Movement
	hSpeed = lengthdir_x(inputMagnitude * spd, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * spd, inputDirection);

	var _closestObj = instance_nearest(x, y, par_entity);
	var _closestObjDistance = point_distance(x, y, _closestObj.x, _closestObj.y)
	var _hovering = position_meeting(mouse_x, mouse_y, _closestObj);
	if (_closestObj.entityIsEnemy == false)
	{
	if (_closestObjDistance <= 64) && (_hovering)
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
			with(instance_create_depth(0,0,-998,obj_buildings_inside_menu))
			{
				building_type = _closestObj.buildingType;
				building_x = _closestObj.x;
				building_y = _closestObj.y;
			}
		}
		else if (_closestObj.entityDestroyable) && (player_hand.cooldown == 0) && (keyUse) && (!player_hand.ranged[player_hand.state])
		{
			// durablilty code
			if (handHolding[holding_number] != HAND.free)
			{
				global.inv[holding_number][1] -= 1;
				if (global.inv[holding_number][1] <= 0){global.inv[holding_number] = [-1,-1];}
			}
			_closestObj.entityHp -= player_hand.handDamage[player_hand.state];
			player_hand.rotation = -70;
			player_hand.cooldown = 20;
		}
	}
	else
	{
		par_entity.drawLine = false;
	}
	}
	else
	{
		if (keyUse)
		{
			instance_create_layer(x,y,layer,obj_player_damage)
		}
	}
	
	
	// Player Collision
	scr_player_collision();

	// Update Sprite Index
	scr_player_animate_sprite();
	
	// Change item
	scr_player_change_hand();
	
	
	if (keyRun) && (player_hand.holdingAim == false)
	{	
		spd = runspd;
	}
	else
	{
		spd = walkspd;
	}
}