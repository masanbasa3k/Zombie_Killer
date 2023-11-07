if (!obj_item_manager.inventoryIsOpen){exit;}

if (hand_slot)
{
	item_type = obj_hand.handItem[obj_player.handHolding[hand_slot_number-1]]
	item_spr = obj_hand.handItemSprite[obj_player.handHolding[hand_slot_number-1]]
}

for (var i=0; i<ds_list_size(global.inv); i++)
{	
	var _arr = global.inv[|i];
	
	var _item = _arr[0];
	var _count = _arr[1];
	
	if (i = self_number)
	{
		item_type = _item;
		item_spr = obj_item_manager.itemSprite[_item];
		item_count = _count;
	}
}

hovering = position_meeting(mouse_x, mouse_y, self);

if (item_type != -1)
{
	if (hovering)
	{
		if (mouse_check_button_pressed(mb_left))
		{
			//clicked = true;
			show_debug_message(item_spr)
			if (hand_slot) && (item_type)
			{
				obj_player.handHolding[hand_slot_number-1] = HAND.free;
				scr_instance_create_item(obj_player.x,obj_player.y,item_type)
			}
		}
	}
}

if (mouse_check_button_released(mb_left))
{
	clicked = false;
}

