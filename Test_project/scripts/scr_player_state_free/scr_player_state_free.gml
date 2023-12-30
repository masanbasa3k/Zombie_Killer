// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_state_free(){
	
	// Movement
	hSpeed = lengthdir_x(inputMagnitude * spd, inputDirection);
	vSpeed = lengthdir_y(inputMagnitude * spd, inputDirection);

	var _closestObj = -1;
	if instance_exists(par_entity){_closestObj = instance_nearest(x, y, par_entity);}
	var _closestObjDistance = point_distance(x, y, _closestObj.x, _closestObj.y)
	var _hovering = position_meeting(mouse_x, mouse_y, _closestObj);
	
	// buraya elindeki item yemek ise yiyip stamina artirma eklencek veya can itemi ise
	// yemekler ve can esyalari elde gozukur azicik ileri atilir el sonra olur falan iste aq
	
	if (keyUse) && (_closestObj!= -1) && (global.player_stamina > 0)
	{
		if (_closestObj.entityBuilding) && (_closestObjDistance <= 64) && (_hovering)
		{
			with(instance_create_depth(0,0,-998,obj_buildings_inside_menu))
			{
				building_type = _closestObj.buildingType;
				building_x = _closestObj.x;
				building_y = _closestObj.y;
			}
		}
		else if (player_hand.cooldown == 0) && (!player_hand.ranged[player_hand.state])
		{
			player_hand.rotation = -70;
			player_hand.cooldown = 20;
			var _damage = player_hand.handDamage[player_hand.state];
			var _knockback = player_hand.melee_weapon_knockback[player_hand.state];
			var _damage_box = instance_create_layer(x+(image_xscale*16),y,"World",obj_player_damage)
			with(_damage_box)
			{
				damage = _damage
				knockback = _knockback
			}
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