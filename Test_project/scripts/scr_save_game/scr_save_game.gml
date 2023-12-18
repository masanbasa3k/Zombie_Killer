// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_save_game(){
	
	// save map
	var _map = ds_map_create();
	_map[? "room"] = room;
	//_map[? "buildings"] = 
	_map[? "playerHealt"] = global.player_hp;
	_map[? "playerHealtMax"] = global.player_hp_max;
	_map[? "playerHasLvl"] = global.player_has_level;
	_map[? "playerXpMax"] = global.max_xp_count;
	_map[? "playerXp"] = global.player_xp;
	_map[? "playerMoney"] = global.player_money;
	//_map[? "inventory"] = global.inv;
	_map[? "inventorySize"] = global.invSize;
	_map[? "playerX"] = global.player_x;
	_map[? "playerY"] = global.player_y;
	
	var temp_inv = ds_list_create();
	temp_inv[| 0] = global.inv;
	_map[? "inventory"] = ds_list_write(temp_inv);

	// save all to string
	var _string = json_encode(_map);
	SaveStringToFile("save" + string(global.game_save_slot) + ".sav", _string);
	show_debug_message(_string);
	
	// Nuke the data 
	ds_map_destroy(_map);
	show_debug_message("Game Saved!");
}

function SaveStringToFile(_filename, _string)
{
	var _buffer = buffer_create( string_byte_length(_string)+1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}