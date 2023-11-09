

if (hand_slot)
{
	if (obj_item_manager.inventoryIsOpen)
	{
		x = (obj_camera.x - (RESOLUTION_W/2) + 100+((self_number)*32));
		y = (obj_camera.y - (RESOLUTION_H/2) + 100-32);
	}
	else
	{
		x = (obj_camera.x - (RESOLUTION_W/2) + _x) + (self_number * 24) + 160;
		y = (obj_camera.y - (RESOLUTION_H/2) + _y) - 96 + 286;
	}
}
else
{
	x = (obj_camera.x - (RESOLUTION_W/2) + _x)
	y = (obj_camera.y - (RESOLUTION_H/2) + _y)
}

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
		if (mouse_check_button_pressed(mb_right))
		{
			if (global.inv[self_number][1] != -1)
			{
				for (var i = 0;i<global.inv[self_number][1];i++)
				{
					scr_instance_create_item(obj_player.x+20,obj_player.y,global.inv[self_number][0])
				}
			}
			else
			{scr_instance_create_item(obj_player.x+20,obj_player.y,global.inv[self_number][0])}
			global.inv[self_number] = [-1,-1];
		}
		if (mouse_check_button_released(mb_left)) && (global.inv[self_number][0] == global.inv[global.clicked][0])
		{
			global.inv[self_number][1] += global.inv[global.clicked][1];
			global.inv[global.clicked] = [-1,-1];
		}
	}
}
else
{
	if (hovering) && (mouse_check_button_released(mb_left))
	{
		if (global.inv[self_number][0] == -1)
		{
			global.inv[self_number] = global.inv[global.clicked];
			global.inv[global.clicked] = [-1,-1];
		}
	}
}


if (mouse_check_button_released(mb_left))
{
	clicked = false;
}