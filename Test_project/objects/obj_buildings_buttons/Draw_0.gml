if (!global.buildingMenu){exit;}

var _have_item = false;
var _item_list = -1;

if (building_number == buildings.select_building)
{
	var _reqLength = array_length(buildings.buildingReq[building_number])
	draw_sprite_ext(spr_inventory_slot,0,x,y,1,1,0,c_yellow,1);
	draw_sprite_ext(spr_inventory_slot,0,x-112,y-(building_number*64),2,max(2,_reqLength),0,c_white,1);
	draw_text(x-96,y+8-(building_number*64),buildings.buildingMenu[building_number][0]);
	for (var i = 0; i < _reqLength; i++)
	{
		var _item = buildings.buildingReq[building_number][i]
		draw_sprite_ext(obj_item_manager.itemSprite[_item[0]],0,x-96,y+40+(i*24)-(building_number*64),1,1,0,c_white,1)
		draw_text(x-32,y+28+(i*24)-(building_number*64),_item[1])
	}
}
else if (hovering)
{
	draw_sprite_ext(spr_inventory_slot,0,x,y,1,1,0,c_yellow,0.5);
}
else
{
	draw_sprite_ext(spr_inventory_slot,0,x,y,1,1,0,c_white,1);
}
draw_sprite(spr_buildings,building_number,x+24,y+24);

