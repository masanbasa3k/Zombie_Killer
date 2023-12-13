cell_size = buildings.cell_size[buildings.select_building];
if (old_cell_size != cell_size){clear_ds_grid = true;}
if(clear_ds_grid)
{
	var _old_cs = old_cell_size;
	var _old_gx = x div _old_cs;
	var _old_gy = y div _old_cs;
	var _i_grid = buildings.ds_buildings_instances;
	_i_grid[# _old_gx, _old_gy] = 0;
	
	scr_write_to_griding();
	if (instance_exists(obj_building)){with(obj_building){scr_write_to_griding();}}
	old_cell_size=cell_size;
	clear_ds_grid = false;
}
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

