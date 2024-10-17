// chance depeth
if (room != _room)
{
	_room = room;
	depth = -room_height-1;
}


inBuilding = global.buildingMenu


if (inBuilding) && (select_building != -1)
{
	mx = mouse_x;
	my = mouse_y;
	
	var _cs = cell_size[select_building];
	var _gx = (mx div _cs);
	var _gy = (my div _cs);
	
	if (instance_exists(obj_player))
	{
		player_x = obj_player.x;
		player_y = obj_player.y;
	}
	var _dist = sqrt(power(mx - player_x,2) + power(my - player_y,2));
	
	var _gx32 = (mx div 32);
	var _gy32 = (my div 32);
	var _cell32 = ds_buildings_instances[# _gx32, _gy32];

	var _gx64= (mx div 64);
	var _gy64 = (my div 64);
	var _cell64 = ds_buildings_instances[# _gx64, _gy64];
	if (_cell32 == 0) && (_cell64 == 0)
	{
		var _lay_id = layer_get_id("T_buildable_ground");
		var _map_id = layer_tilemap_get_id(_lay_id);
		var _data = tilemap_get_at_pixel(_map_id, mx, my);
		if (_data != 0)
		{
			
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
	
			if (_allOnes) && (obj_player.keyUse) && (_dist <= 96)
			{
				for (var i=0; i<array_length(buildingReq[select_building]); i++)
				{
					var _how_many_req = buildingReq[select_building][i];
					scr_remove_item_from_env_for_buildings(_how_many_req)
				}
				if  (type_of_building[select_building] == "building"){scr_instance_create_building(mx, my, select_building);}
				else if (type_of_building[select_building] == "wall"){scr_instance_create_building_wall(mx, my, select_building);}
				else if (type_of_building[select_building] == "crop"){scr_instance_create_building_crop(mx, my, select_building);}
				else if (type_of_building[select_building] == "light"){scr_instance_create_building_light(mx, my, select_building);}
			}
		}
	}
}
// buildings buttons
if (global.buildingMenu)
{
	if (create_buttons)
	{
		var _slider = instance_create_depth(RESOLUTION_W-24,64,-999,obj_buildings_menu_slider)
		with (_slider)
		{
			if (sprite_get_number(spr_all_buildings) >= 4)
			{max_button_count = sprite_get_number(spr_all_buildings) - 4}
			else{max_button_count = 0}		
		}
		for (var i = 0; i < sprite_get_number(spr_all_buildings); i++)
		{
			with(instance_create_depth(RESOLUTION_W-96,64+(i*64),-999,obj_buildings_buttons))
			{
				building_number = i;
			}
		}
		create_buttons = false;
	}
}
else
{create_buttons = true;}