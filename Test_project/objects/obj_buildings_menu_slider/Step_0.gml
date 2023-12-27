// chance depeth
if (room != _room)
{
	_room = room;
	depth = -room_height-3;
}


if (mouse_check_button_pressed(mb_left))
{
	var _button_x = x;
	var _button_y = y+sprite_height*value;
	var _button_radius = sprite_get_width(spr_slider_button);
	if point_in_circle(mouse_x, mouse_y, _button_x, _button_y, _button_radius){selected_ = true;}
}

if (!mouse_check_button(mb_left))
{
	selected_ = false;
}

if (selected_)
{
	value = clamp((mouse_y-y)/sprite_height,0,max_value_)
	event_user(0)
}


if (global.buildingMenu == false)
{instance_destroy()}