if (!global.buildingMenu){exit;}

draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _have_item = false;
var _item_list = -1;

if (building_number == buildings.select_building)
{
	var _reqLength = array_length(buildings.buildingReq[building_number])
	draw_sprite_ext(spr_inventory_slot,1,x,y,1,1,0,c_white,1);
	scr_nine_slice_box_stretched(spr_buildings_inside_menu,x-112,y-(building_number*64),x+16,y-(building_number*64)+64+(_reqLength*24),0)
	draw_text(x-48,y+16-(building_number*64),buildings.buildingMenu[building_number][0]);
	for (var i = 0; i < _reqLength; i++)
	{
		var _needed_item = buildings.buildingReq[building_number][i]
		for (var j=0; j<array_length(global.inv); j++)
		{
			var _arr = global.inv[j];
			var _item = _arr[0];
			var _count = _arr[1];
			if (_needed_item[0] == _item){_have_item = true;break}else{_have_item = false;}
		}
		draw_sprite_ext(obj_item_manager.itemSprite[_needed_item[0]],0,x-80,y+44+(i*24)-(building_number*64),1,1,0,c_white,1)
		draw_text(x-16,y+32+(i*24)-(building_number*64),_needed_item[1])
		if (_have_item){draw_text(x-32,y+32+(i*24)-(building_number*64),string(_count)+"/")}
		else{draw_text(x-32,y+32+(i*24)-(building_number*64),"0/")}
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
draw_sprite_ext(spr_all_buildings,building_number,x+32,y+30,0.5,0.5,0,c_white,1);

