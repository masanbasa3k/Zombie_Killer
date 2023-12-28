
_room = room;
depth = -room_height-1;

ds_buildings_types = 0;
ds_buildings_instances = 0;
create_buttons = true;

enum building{
	furnace,
	table,
	wooden_wall,
	stone_wall,
	crop,
	torch,
}

/// buildings cost
buildingReq[building.furnace] = [[item.rock, 1], [item.coal, 1]];
buildingReq[building.table] = [[item.wood, 1]];
buildingReq[building.wooden_wall] = [[item.wood, 1]];
buildingReq[building.stone_wall] = [[item.rock, 1]];
buildingReq[building.crop] = [];
buildingReq[building.torch] = [[item.wood, 1], [item.coal, 1]];

/// buildings drop
buildingDrop[building.furnace] = [[item.rock, 3], [item.coal, 2]];
buildingDrop[building.table] = [[item.wood, 2]];
buildingDrop[building.wooden_wall] = [[item.wood, 2]];
buildingDrop[building.stone_wall] = [[item.wood, 2]];


/// buildings makeable items
buildingMenu[building.furnace] = ["Furnace"]
buildingMenuItem[building.furnace] = [3,7,8];// coal
buildingItem[building.furnace] = [item.coal, item.iron_bar, item.gold_bar];// coal

buildingMenu[building.table] = ["Table"]
buildingMenuItem[building.table] = [4,5,15,16];
buildingItem[building.table] = [item.wooden_axe, item.wooden_pickaxe, item.stone_axe, item.stone_pickaxe];

buildingMenu[building.wooden_wall] = ["Wooden Wall"];
buildingMenu[building.stone_wall] = ["Stone Wall"];
buildingMenu[building.crop] = ["Crop"];
buildingMenu[building.torch] = ["Torch"];


cell_size[building.furnace] = 64;
cell_size[building.table] = 64;
cell_size[building.wooden_wall] = 32;
cell_size[building.stone_wall] = 32;
cell_size[building.crop] = 32;
cell_size[building.torch] = 32;

type_of_building[building.furnace] = "building";
type_of_building[building.table] = "building";
type_of_building[building.wooden_wall] = "wall";
type_of_building[building.stone_wall] = "wall";
type_of_building[building.crop] = "crop";
type_of_building[building.torch] = "light";


inBuilding = false;
select_building = -1;

mx = 0;
my = 0;
player_x = 0;
player_y = 0;