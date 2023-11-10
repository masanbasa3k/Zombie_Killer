/// @description Insert description here
// You can write your code in this editor
if (building_number == -1){instance_destroy()}
hovering = position_meeting(mouse_x, mouse_y, self);

if (hovering) && (mouse_check_button_pressed(mb_left))
{
	buildings.select_building = building_number;
}

x = (obj_camera.x - (RESOLUTION_W/2) + _x)
y = (obj_camera.y - (RESOLUTION_H/2) + _y) + (building_number)