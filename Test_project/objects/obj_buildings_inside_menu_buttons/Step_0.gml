if (keyboard_check_pressed(vk_escape))
{instance_destroy();}

hovering = position_meeting(mouse_x, mouse_y, self);

item_type = buildings.buildingItem[obj_buildings_inside_menu.building_type][number]

//x = obj_camera.x - 100 - 96
//y = obj_camera.y - 100 + (number*64)

var _cam_x = obj_camera.x-100
var _cam_y = obj_camera.y-100

if (hovering) && (mouse_check_button_pressed(mb_left)) && (is_open==false)
{
	obj_buildings_inside_menu_buttons.is_open = false;
	is_open = true;
	var _reqLength = array_length(obj_item_manager.itemReq[item_type])
	self_create_button = instance_create_depth(_cam_x+224,_cam_y+28+(_reqLength*24),depth-1,obj_buildings_inside_craft_button)
	with (self_create_button)
	{
		number = other.number;
		item_type = other.item_type
	}
}

if (keyboard_check_pressed(vk_escape))
{instance_destroy();}

if (instance_exists(self_create_button)) && (is_open==false)
{
	instance_destroy(self_create_button);
}