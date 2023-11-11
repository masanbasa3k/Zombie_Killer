ds_buildings_types = 0;
ds_buildings_instances = 0;
create_buttons = true;

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
buildingMenu[building.furnace] = ["Furnace"]
buildingMenuItem[building.furnace] = [3, 7, 8];// coal
buildingItem[building.furnace] = [item.coal, item.iron_bar, item.gold_bar];// coal

buildingMenu[building.table] = ["Table"]
buildingMenuItem[building.table] = [4,5];
buildingItem[building.table] = [item.axe, item.pickaxe];

inBuilding = false;
select_building = -1;

mx = 0;
my = 0;

cell_size = 32;
player_x = 0;
player_y = 0;