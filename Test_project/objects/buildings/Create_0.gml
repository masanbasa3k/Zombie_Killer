ds_buildings_types = 0;
ds_buildings_instances = 0;

enum building{
	furnace,
	table,
}

/// buildings cost
buildingReq[building.furnace] = [[item.rock, 1], [item.coal, 1]];
buildingReq[building.table] = [[item.wood, 1]];

/// buildings drop
buildingDrop[building.furnace] = [[item.rock, 3], [item.coal, 2]];
buildingDrop[building.table] = [[item.wood, 2]];

/// buildings makeble items
buildingMenu[building.furnace] = ["Furnace",0,["1:Coal", "2:Selection 2", "3:Exit"]]
buildingMenuItem[building.furnace] = [3];// coal
buildingItem[building.furnace] = [item.coal];// coal

buildingMenu[building.table] = ["Table",1,["1:Axe", "2:Pickaxe", "3:Exit"]]
buildingMenuItem[building.table] = [4,5];
buildingItem[building.table] = [item.axe, item.pickaxe];

inBuilding = false;
select_building = 0;

mx = 0;
my = 0;

cell_size = 32;

