if (!global.buildingMenu){exit;}

draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _have_item = false;

var _cam_x = (obj_camera.x - (RESOLUTION_W/2) + _x)
var _cam_y = (obj_camera.y - (RESOLUTION_H/2) + _y) + (building_number)

if (building_number == buildings.select_building)
{
	var _reqLength = array_length(buildings.buildingReq[building_number])
	scr_nine_slice_box_stretched(spr_buildings_inside_menu,_cam_x-132,_cam_y-(building_number*64)-(building_number*1),_cam_x+16,_cam_y-(building_number*64)+64+(_reqLength*24)-(building_number*1),0)
	draw_text(_cam_x-58,_cam_y+16-(building_number*64)-(building_number*1),buildings.buildingMenu[building_number][0]);
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
		draw_sprite_ext(obj_item_manager.itemSprite[_needed_item[0]],0,_cam_x-90,_cam_y+44+(i*24)-(building_number*64)-(building_number*1),1,1,0,c_white,1)
		draw_text(_cam_x-26,_cam_y+32+(i*24)-(building_number*64)-(building_number*1),_needed_item[1])
		if (_have_item){draw_text(_cam_x-42,_cam_y+32+(i*24)-(building_number*64)-(building_number*1),string(_count)+"/")}
		else{draw_text(_cam_x-42,_cam_y+32+(i*24)-(building_number*64)-(building_number*1),"0/")}
	}
}
if (hovering)
{
	image_index = 1;
}
else
{
	image_index = 0;
}

scr_nine_slice_box_stretched(spr_buildings_inside_menu,x-4,y-4,x+68,y+68,image_index)
draw_sprite_ext(spr_all_buildings,building_number,x+32,y+30,0.5,0.5,0,c_white,1);