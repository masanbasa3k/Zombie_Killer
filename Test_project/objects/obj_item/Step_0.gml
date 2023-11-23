if (grounded == 1)
{
	vspd += jump
	hspd += move_spd
}

if (vspd < 0)
{
	vspd = max(vspd, jump/jump_mod)
}
vspd += grav
vspd = clamp(vspd, -vspd_max, vspd_max)

if(y>spawn_y)
{
	grounded = 1;
	vspd = 0;
	hspd = 0;
}
else{grounded = 0;}

y = y + sign(vspd)
x = x + sign(hspd)


if (place_meeting(x,y,obj_player)) && (grounded == 1)
{	
	for (var i=0; i<array_length(global.inv);i++)
	{
		if (global.inv[i][0] == -1)
		{
			global.inv[i][0] = itemType;
			if (obj_item_manager.isWeapon[itemType])
			{
				if (!obj_hand.ranged[obj_item_manager.weaponHandEnum[itemType]])
				{
					if (itemAmount == -1)
					{
						global.inv[i][1] = obj_hand.melee_wapon_durability[obj_item_manager.weaponHandEnum[itemType]];
					}
					else
					{
						global.inv[i][1] = itemAmount;
					}
				}
				else
				{
					global.inv[i][1] = 0;
				}
			}
			else
			{
				global.inv[i][1] = itemAmount;
			}
			instance_destroy();
			break;
		}
		else if (global.inv[i][0] == itemType) && (!obj_item_manager.isWeapon[itemType])
		{
			global.inv[i][1] += itemAmount;
			instance_destroy();
			break;
		}
	}
}