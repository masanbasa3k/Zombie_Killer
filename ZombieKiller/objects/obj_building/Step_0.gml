/// @description Insert description here
// You can write your code in this editor

if (entityHp <= 0)
{
	var _cs = cell_size;
	var _gx = x div _cs;
	var _gy = y div _cs;
	var _i_grid = buildings.ds_buildings_instances;
	ds_grid_clear(buildings.ds_buildings_instances,_i_grid)
}

// Inherit the parent event
event_inherited();

