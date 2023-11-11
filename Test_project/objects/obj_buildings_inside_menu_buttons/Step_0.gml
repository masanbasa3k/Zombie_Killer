if (keyboard_check_pressed(vk_escape))
{instance_destroy();}

hovering = position_meeting(mouse_x, mouse_y, self);

item_type = buildings.buildingItem[obj_buildings_inside_menu.building_type][number]

x = obj_camera.x - 100
y = obj_camera.y - 100 + (number*64)

if (hovering) && (mouse_check_button_pressed(mb_left))
{
	show_debug_message(number)
	scr_building_select_response(number, buildings.buildingMenuItem[obj_buildings_inside_menu.building_type])
}