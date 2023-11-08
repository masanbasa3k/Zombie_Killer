if (place_meeting(x,y,obj_player))
{	
	for (var i=0; i<array_length(global.inv);i++)
	{
		if (global.inv[i][0] == -1)
		{
			global.inv[i][0] = itemType;
			if (obj_item_manager.isWeapon[itemType]){global.inv[i][1] = -1;}
			else{global.inv[i][1] = 1;}
			instance_destroy();
			break;
		}
		else if (global.inv[i][0] == itemType) && (global.inv[i][1] != -1)
		{
			global.inv[i][1] += 1;
			instance_destroy();
			break;
		}
	}	
}
	
	
exit;
	var _itemPos = scr_item_pos(itemType);
	
	if (_itemPos == -1)
	{
		global.inv += [itemType,1];
		instance_destroy();
	}
	else if (_itemPos != -1)
	{
		if (obj_item_manager.isWeapon[itemType])
		{
			global.inv += [itemType,1];
			instance_destroy();
		}
		else
		{
			var _arr = global.inv[| _itemPos];
			_arr[@ 1]++;
			instance_destroy();
		}
	}
