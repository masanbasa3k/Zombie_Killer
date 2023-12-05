ds_buildings_types = 0;
ds_buildings_instances = 0;
create_buttons = true;

enum building{
	furnace,
	table,
	wooden_wall,
}

/// buildings cost
buildingReq[building.furnace] = [[item.rock, 1], [item.coal, 1]];
buildingReq[building.table] = [[item.wood, 1]];
buildingReq[building.wooden_wall] = [[item.wood, 1]];


/// buildings drop
buildingDrop[building.furnace] = [[item.rock, 3], [item.coal, 2]];
buildingDrop[building.table] = [[item.wood, 2]];
buildingDrop[building.wooden_wall] = [[item.wood, 2]];


/// buildings makeable items
buildingMenu[building.furnace] = ["Furnace"]
buildingMenuItem[building.furnace] = [3,7,8];// coal
buildingItem[building.furnace] = [item.coal, item.iron_bar, item.gold_bar];// coal

buildingMenu[building.table] = ["Table"]
buildingMenuItem[building.table] = [4,5,15,16];
buildingItem[building.table] = [item.wooden_axe, item.wooden_pickaxe, item.stone_axe, item.stone_pickaxe];

buildingMenu[building.wooden_wall] = ["Wooden Wall"]

cell_size[building.furnace] = 64;
cell_size[building.table] = 64;
cell_size[building.wooden_wall] = 32;


inBuilding = false;
select_building = -1;

mx = 0;
my = 0;
player_x = 0;
player_y = 0;