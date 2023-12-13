
var _cam_x = obj_camera.x-100
var _cam_y = obj_camera.y-100
draw_self();
if (hovering)
{image_index = number*2+1;}
else
{image_index = number*2;}

item_type = buildings.buildingItem[obj_buildings_inside_menu.building_type][number]

var _have_item = false;
if (is_open)
{
	var _reqLength = array_length(obj_item_manager.itemReq[item_type])
	scr_nine_slice_box_stretched(spr_buildings_inside_menu,_cam_x+112,_cam_y-16,_cam_x+336,_cam_y+96+(_reqLength*24),0)
	draw_text(_cam_x+224,_cam_y,obj_item_manager.itemName[item_type])
	for (var i = 0; i < _reqLength; i++)
	{
		var _needed_item = obj_item_manager.itemReq[item_type][i]
		for (var j=0; j<array_length(global.inv); j++)
		{
			var _arr = global.inv[j];
			var _item = _arr[0];
			var _count = _arr[1];
			if (_needed_item[0] == _item){_have_item = true;break}else{_have_item = false;}
		}
		draw_sprite_ext(obj_item_manager.itemSprite[_needed_item[0]],0,_cam_x+148,_cam_y+44+(i*24),1,1,0,c_white,1)
		draw_text(_cam_x+200,_cam_y+32+(i*24),_needed_item[1])
		if (_have_item){draw_text(_cam_x+180,_cam_y+32+(i*24),string(_count)+"/")}
		else{draw_text(_cam_x+180,_cam_y+32+(i*24),"0/")}
	}
}

scr_nine_slice_box_stretched(spr_buildings_inside_menu,x+32,y,x+112+112,y+64,image_index)
draw_sprite(obj_item_manager.itemSprite[item_type],0,x+64,y+32)
draw_text(x+32+96,y+24,obj_item_manager.itemName[item_type])