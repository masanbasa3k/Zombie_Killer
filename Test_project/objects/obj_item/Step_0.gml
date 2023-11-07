if (place_meeting(x,y,obj_player)) && (ds_list_size(global.inv) < global.invSize)
{	
	var _itemPos = scr_item_pos(itemType);
	
	if (_itemPos == -1)
	{
		ds_list_add(global.inv, [itemType,1]);
		instance_destroy();
	}
	else if (_itemPos != -1)
	{
		if (obj_item_manager.isWeapon[itemType])
		{
			ds_list_add(global.inv, [itemType,1]);
			instance_destroy();
		}
		else
		{
			var _arr = global.inv[| _itemPos];
			_arr[@ 1]++;
			instance_destroy();
		}
	}
}