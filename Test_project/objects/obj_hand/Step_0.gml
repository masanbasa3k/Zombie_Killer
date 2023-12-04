var _player_hand = obj_player.handHolding[obj_player.holding_number]
var _bullet_item = ranged_weapon_ammo_item[_player_hand]
var _ammo_box_have = scr_check_item_have([_bullet_item,1])

if (keyboard_check_pressed(ord("F"))) && (_ammo_box_have)
{
	// add weapon to ammo
	for (var i = 0; i < array_length(global.inv); i++)
	{
		var _arr = global.inv[i]
		var _item = _arr[0];
		var _count = _arr[1];
		if (_item < array_length(obj_item_manager.weaponHandEnum))
		{
			if (_item != -1) && (obj_item_manager.weaponHandEnum[_item] == _player_hand)
			{
				global.inv[i][1] = ranged_weapon_ammo_speed[_player_hand]
				scr_remove_item_from_env_for_buildings([_bullet_item,1])
				break;
			}
		}
	}
}


if (is_ranged_true == false)
{
	rotation = lerp(rotation, 45, 0.1);

	image_angle = rotation * obj_player.image_xscale;
	_x = x;
	_imgAngle = image_angle;
	
}
else
{	
	if (holdingAim)
	{
		// recoil
			curvePos += curveSpd;
			var _curveStruct = animcurve_get(ac_recoil);
			
			var _channel = animcurve_get_channel(_curveStruct, "angle");
			var _angvalue = animcurve_channel_evaluate(_channel, curvePos);
			_imgAngle = image_angle - (_angvalue*sign(image_yscale))
			
			var _channel = animcurve_get_channel(_curveStruct, "x");
			var _xvalue = animcurve_channel_evaluate(_channel, curvePos);
			_x = x-lengthdir_x(_xvalue,_imgAngle);
			
			if (curvePos >=1)
			{curveSpd=0;curvePos=0;}
			// end of recoil
			direction = image_angle
	}
	else
	{	
		_x = x;
		_imgAngle = image_angle;
	}
}

if (cooldown>0){cooldown--;}

sprite_index = handSprite[state];




