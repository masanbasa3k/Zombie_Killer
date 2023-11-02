// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_item_pos(){
	for (var i=0; i<ds_list_size(global.inv); i++)
	{
		var _arr = global.inv[| i];
		if (_arr[0]==argument[0])
		{
			return i;
		}
	}
	return -1;
}