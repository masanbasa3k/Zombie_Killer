if (place_meeting(x,y,obj_player))
{
	instance_destroy();
	
	var _itemPos = scr_item_pos(itemType);
	if (_itemPos == -1)
	{
		ds_list_add(global.inv, [itemType,1]);
	}
	else
	{
		var _arr = global.inv[| _itemPos];
		_arr[@ 1]++;
	}
}