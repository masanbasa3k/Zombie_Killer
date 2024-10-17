// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_instance_create_building_light(){
	
	var _cs = 32;
	var _gx = argument0 div _cs;
	var _gy = argument1 div _cs;
	var _i_grid = buildings.ds_buildings_instances;
	var _cell = _i_grid[# _gx, _gy];
	
	if (_cell == 0)
	{
		var _xx = _gx*_cs;
		var _yy = _gy*_cs;
	
		// Check buildable area
		var _lay_id = layer_get_id("T_buildable_ground");
		var _map_id = layer_tilemap_get_id(_lay_id);
		var _data = tilemap_get_at_pixel(_map_id, argument0, argument1);
	
		if (_data == 0)
		{
			return false;
		}
		
		var _inst = instance_create_layer(_xx+16, _yy, "Buildings", obj_building_light);
		_i_grid[# _gx, _gy] = _inst;
		
	
		with (_inst)
		{
			buildingType = argument2;		
		}
		return _inst;
	}
	else
	{return false;}
}