if (ds_exists(ds_buildings_types, ds_type_grid))
{
	ds_grid_destroy(ds_buildings_types);
}

if (ds_exists(ds_buildings_instances, ds_type_grid))
{
	ds_grid_destroy(ds_buildings_instances);
}