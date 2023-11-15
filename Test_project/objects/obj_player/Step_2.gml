if (instance_exists(player_hand))
{
	player_hand.is_ranged_true = player_hand.ranged[handHolding[holding_number]]
	player_hand.depth = depth-1;
	player_hand.image_yscale = 1;
	if (player_hand.is_ranged_true == false)
	{
		player_hand.x = x - image_xscale * 4;
		player_hand.y = y - 16;
	
		player_hand.image_xscale = image_xscale;
	}
	else
	{
		if (image_xscale<0){player_hand.image_xscale=1;}
		if (mouse_check_button_pressed(mb_right)){player_hand.holdingAim=true;}
		if (mouse_check_button_released(mb_right)){player_hand.holdingAim=false;}
		
		if (keyUse) && (player_hand.cooldown == 0) && (player_hand.holdingAim) 
		{
			for (var i = 0; i < array_length(global.inv); i++)
			{
				var _arr = global.inv[i]
				var _item = _arr[0];
				var _count = _arr[1];
				if (obj_item_manager.weaponHandEnum[_item] == handHolding[holding_number])
				{
					if (global.inv[i][1] > 0)
					{
						global.inv[i][1] -= 1
						scr_player_fire_bullet();
					}
					break;
				}
			}
		}
		if (player_hand.holdingAim == false)
		{
			player_hand.x = x;
			player_hand.y = y - 28;
			if (image_xscale < 0){player_hand.image_angle = 225;player_hand.image_yscale = -1;}
			else{player_hand.image_angle = -45;player_hand.image_yscale = 1;}
		}
		else
		{
			player_hand.x = x + image_xscale * 6;
			player_hand.y = y - 36;
			
			player_hand.image_angle = point_direction(player_hand.x,player_hand.y,mouse_x,mouse_y);

			if (player_hand.direction > 90) && (player_hand.direction <= 270)
			{
				player_hand.image_yscale = -1;
			}
			else
			{
				player_hand.image_yscale = 1;
			}		
		}
	}
}