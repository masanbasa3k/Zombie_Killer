if (instance_exists(self))
{obj_player.state = scr_player_state_locked}
else{obj_player.state = scr_player_state_free}

// chance depth
if (room != _room)
{
	_room = room;
	depth = -room_height-1;
}


var _cam_x = obj_camera.x-100
var _cam_y = obj_camera.y-100

if (keyboard_check_pressed(vk_escape))
{instance_destroy();}

var _itemListNumber = array_length(buildings.buildingItem[building_type])
if (create_building_buttons)
{
	for (var i = 0; i < _itemListNumber; i++)
	{
		with(instance_create_depth(RESOLUTION_W/2,RESOLUTION_H/2,-999,obj_buildings_inside_menu_buttons))
		{
			number = i;
			x = obj_camera.x - 100 - 96
			y = obj_camera.y - 100 + (number*64)
		}
	}
	with(slider)
	{
		if (_itemListNumber >= 4)
		{max_button_count = _itemListNumber - 4}
		else{max_button_count = 0}	
	}
	
	create_building_buttons = false;
}

