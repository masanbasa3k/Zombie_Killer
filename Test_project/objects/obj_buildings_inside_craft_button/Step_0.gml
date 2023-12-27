// chance depeth
if (room != _room)
{
	_room = room;
	depth = -room_height-3;
}

/// @description Insert description here
// You can write your code in this editor
hovering = position_meeting(mouse_x, mouse_y, self);


if (hovering) && (mouse_check_button_pressed(mb_left))
{
	scr_building_select_response(number, buildings.buildingMenuItem[obj_buildings_inside_menu.building_type])
}
