ds_buildings_types = 0;
ds_buildings_instances = 0;

enum building{
	furnace,
	table,
}

buildingReq[building.furnace] = [[item.rock, 3], [item.coal, 2]];
buildingReq[building.table] = [[item.wood, 2]];


buildingDrop[building.furnace] = [[item.rock, 3], [item.coal, 2]];
buildingDrop[building.table] = [[item.wood, 2]];

inBuilding = false;
select_building = 0;

mx = 0;
my = 0;

cell_size = 32;