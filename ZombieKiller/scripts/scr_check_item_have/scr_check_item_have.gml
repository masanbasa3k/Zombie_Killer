// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_item_have(){
	var _how_many_req = argument[0];
	var _req_item_name = _how_many_req[0]
	var _req_item_count = _how_many_req[1]
	
	for (var i=0; i<array_length(global.inv); i++)
	{
		var _arr = global.inv[i];
	
		var _item = _arr[0];
		var _count = _arr[1];
		
		if  (_req_item_name == _item) && (_req_item_count <= _count)
		{
			return true;
		}
	}
	return false;
}