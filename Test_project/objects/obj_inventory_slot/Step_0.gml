if (!obj_item_manager.inventoryIsOpen){exit;}
hovering = position_meeting(mouse_x, mouse_y, self);

if (self_number<3){hand_slot = true;hand_slot_number=self_number;}

	
item_type = global.inv[self_number][0];
item_count = global.inv[self_number][1];
if (item_type!=-1){item_spr = obj_item_manager.itemSprite[item_type];}

if (item_type != -1)
{
	if (hovering)
	{
		if (mouse_check_button_pressed(mb_left))
		{
			clicked = true;
			global.clicked = self_number;
		}
		
		if (mouse_check_button_released(mb_left)) && (global.clicked != -1)
		{
			if (global.inv[global.clicked][0] == global.inv[self_number][0])
			{
				global.inv[self_number][1]+=global.inv[global.clicked][1];
				global.inv[global.clicked] = [-1,-1];
			}
			else
			{
				var _temp = global.inv[self_number]
				global.inv[self_number] = global.inv[global.clicked]
				global.inv[global.clicked] = _temp;
			}
		}
	}
	
	
}
else
{
	if (hovering) && (mouse_check_button_released(mb_left)) && (global.clicked != -1)
	{
		global.inv[self_number] = global.inv[global.clicked]
		global.inv[global.clicked] = [-1,-1];
	}
}


if (mouse_check_button_released(mb_left))
{
	clicked = false;
}