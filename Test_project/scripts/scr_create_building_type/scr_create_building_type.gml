// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_create_building_type(){
	var _argNum = argument_count;
	if (!ds_exists(ds_buildings_types, ds_type_grid))
	{
		ds_buildings_types = ds_grid_create(_argNum,1);
		var _height = 1;
	} else {
		var _height = ds_grid_height(ds_buildings_types);
		ds_grid_resize(ds_buildings_types, _argNum, _height+1);
		_height++;
	}
	
	var i = 0; repeat(_argNum)
	{
		ds_buildings_types[# i,y] = argument[i];
		i++;
	}
}