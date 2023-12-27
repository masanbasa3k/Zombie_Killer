/// @description Insert description here
// You can write your code in this editor

building_number = -1;
hovering = false;

_x = x;
_y = y;

x = (obj_camera.x - (RESOLUTION_W/2) + _x)
y = (obj_camera.y - (RESOLUTION_H/2) + _y) + (building_number)

// chance depeth
_room = room;
depth = -room_height-2;

