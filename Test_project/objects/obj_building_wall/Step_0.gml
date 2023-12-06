/// @description Insert description here
// You can write your code in this editor
cell_size = buildings.cell_size[buildings.select_building];
if(clear_ds_grid)
{
	var _cs = cell_size;
	var _gx = x div _cs;
	var _gy = y div _cs;
	var _i_grid = buildings.ds_buildings_instances;
	ds_grid_clear(buildings.ds_buildings_instances,_i_grid)
	clear_ds_grid = false;
	var _cs = cell_size;
	var _gx = x div _cs;
	var _gy = y div _cs;
	var _i_grid = buildings.ds_buildings_instances;
	_i_grid[# _gx, _gy] = self;
}
if (old_cell_size != cell_size){clear_ds_grid = true}

// Inherit the parent event
event_inherited();

