
if (hovering)
{draw_circle(x,y,32,1)}
else
{draw_self();}

item_type = buildings.buildingItem[obj_buildings_inside_menu.building_type][number]

draw_sprite(obj_item_manager.itemSprite[item_type],0,x+12,y+12)