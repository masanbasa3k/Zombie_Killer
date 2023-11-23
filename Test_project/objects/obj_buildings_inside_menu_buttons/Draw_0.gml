
draw_self();
if (hovering)
{image_index = number*2+1;}
else
{image_index = number*2;}

item_type = buildings.buildingItem[obj_buildings_inside_menu.building_type][number]

draw_sprite(obj_item_manager.itemSprite[item_type],0,x+12,y+12)