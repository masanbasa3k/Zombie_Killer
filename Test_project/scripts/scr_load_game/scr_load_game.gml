// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_game(_slot){
	global.game_save_slot = _slot;
	var _file = "save" + string(global.game_save_slot) + ".sav";
	if (file_exists(_file))
	{
		var _json = LoadJSONFromFile(_file);
		
		//room = _json[? "room"];
		global.player_hp = _json[? "playerHealt"];
		global.player_hp_max = _json[? "playerHealtMax"];
		global.player_has_level = _json[? "playerHasLvl"];
		global.max_xp_count = _json[? "playerXpMax"];
		global.player_xp = _json[? "playerXp"];
		global.player_money = _json[? "playerMoney"];
		//global.inv = _json[? "inventory"];
		global.invSize = _json[? "inventorySize"];
		global.player_x = _json[? "playerX"];
		global.player_y = _json[? "playerY"];
		// do stuff after load
		if (instance_exists(obj_player)){instance_destroy(obj_player)}
		instance_create_layer(global.player_x,global.player_y,"World",obj_player)
		
	    var _temp_inv = ds_list_create();
	    ds_list_read(_temp_inv,_json[? "inventory"]);
	    global.inv = _temp_inv[| 0];		
		
		// items
		var _temp_items = ds_list_create();
	    ds_list_read(_temp_items,_json[? "items"]);
		var _items = _temp_items[| 0];	
		
		with(obj_item) {instance_destroy()}
		while (array_length(_items)>0)
		{
			var _load_item = array_pop(_items)
			scr_instance_create_item(_load_item[0],_load_item[1],_load_item[2],_load_item[3])
		}
		
		// entities
		var _temp_entities = ds_list_create();
	    ds_list_read(_temp_entities,_json[? "entities"]);
		var _entities = _temp_entities[| 0];	
	
		//delete and reload
		with(par_entity) {instance_destroy()}
		while (array_length(_entities)>0)
		{
			var _load_entity = array_pop(_entities)
			var _obj = asset_get_index(_load_entity[0])
			var _entityHp = _load_entity[5];
			var _entityBuilding = _load_entity[6];
			if (_entityHp > 0) // entityHp if greater then zero
			{
				if (_entityBuilding)
				{
					with (instance_create_layer(_load_entity[1],_load_entity[2],"World", _obj))
					{
						image_index = _load_entity[3];
						image_xscale = _load_entity[4];
						entityHp = _entityHp;
						buildingType = _load_entity[7];
						cell_size = _load_entity[8];
						frameWidth = _load_entity[9];
						frameHeight = _load_entity[10];
					}
				}
				else
				{
					with (instance_create_layer(_load_entity[1],_load_entity[2],"World", _obj))
					{
						image_index = _load_entity[3];
						image_xscale = _load_entity[4];
						entityHp = _entityHp;
					}
				}
			}
		}
		ds_map_destroy(_json);
		
		return true;
	}
	else
	{
		show_debug_message("no save in this slot");
		return false;
	}

}

function LoadJSONFromFile(_filename)
{
	var _buffer = buffer_load(_filename);
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	var _json = json_decode(_string);
	return _json;
	
}