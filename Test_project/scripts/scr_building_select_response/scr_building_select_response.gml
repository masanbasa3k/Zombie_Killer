/// @arg Response number
/// @arg item list
function scr_building_select_response(){
	var _number = argument[0] // 1
	var _selected_item_number = argument[1][_number] // [4,5]

	var _list_of_true = []
	_allOnes = true;
	for (var i=0; i<array_length(obj_item_manager.itemReq[_selected_item_number]); i++)
	{
		var _how_many_req = obj_item_manager.itemReq[_selected_item_number][i];
		_list_of_true[i] = scr_check_item_have(_how_many_req)
	}
	
	// Listenin tüm elemanlarını kontrol et
	for (var i = 0; i<array_length(_list_of_true); i++)
	{
		if (_list_of_true[i] != 1)
		{
			_allOnes = false;
			break;
		}
	}
	if (_allOnes)
	{
		for (var i=0; i<array_length(obj_item_manager.itemReq[_selected_item_number]); i++)
		{
			var _how_many_req = obj_item_manager.itemReq[_selected_item_number][i];
			scr_remove_item_from_env_for_buildings(_how_many_req)
		}
		if (obj_item_manager.isWeapon[item_type])
		{
			scr_instance_create_item(obj_buildings_inside_menu.building_x, obj_buildings_inside_menu.building_y, item_type, -1);
		}
		else
		{
			scr_instance_create_item(obj_buildings_inside_menu.building_x, obj_buildings_inside_menu.building_y, item_type);
		}
	}
}
