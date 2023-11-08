// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_remove_item_from_env_for_buildings(){
	var _how_many_req = argument[0];
	var _building_req_item_name = _how_many_req[0]
	var _building_req_item_count = _how_many_req[1]
	
	for (var i=0; i<array_length(global.inv); i++)
	{
		var _arr = global.inv[i];
		
		var _item = _arr[0];
		var _count = _arr[1];
		if  (_building_req_item_name == _item) && (_building_req_item_count <= _count)
		{
			if (_count == 1)
			{
				global.inv[i] = [-1,-1]
			}
			else{global.inv[i][1] -= _building_req_item_count;}
		}
	}
}