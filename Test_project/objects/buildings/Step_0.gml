inBuilding = global.buildingMenu



if (inBuilding)
{
	mx = mouse_x;
	my = mouse_y;
	
	var _cs = cell_size;
	var _gx = (mx div _cs);
	var _gy = (my div _cs);
	
	var _cell = ds_buildings_instances[# _gx, _gy];
	if (_cell == 0)
	{
	var _lay_id = layer_get_id("T_buildable_ground");
	var _map_id = layer_tilemap_get_id(_lay_id);
	var _data = tilemap_get_at_pixel(_map_id, mx, my);
	if (_data != 0)
	{
	
	if (mouse_wheel_up()) select_building += 1;
	if (mouse_wheel_down()) select_building -= 1;
	
	if (select_building > sprite_get_number(spr_buildings)-1){select_building = 0;}
	else if (select_building < 0) {select_building = sprite_get_number(spr_buildings)-1}
	
	var _list_of_true = []
	_allOnes = true;
	
	for (var i=0; i<array_length(buildingReq[select_building]); i++)
	{
		var _how_many_req = buildingReq[select_building][i];
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
	
	if (_allOnes) && (obj_player.keyUse)
	{
		for (var i=0; i<array_length(buildingReq[select_building]); i++)
		{
			var _how_many_req = buildingReq[select_building][i];
			scr_remove_item_from_env_for_buildings(_how_many_req)
		}
		scr_instance_create_building(mx, my, select_building);
	}
	}
	}
}
