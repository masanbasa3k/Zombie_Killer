if (max_button_count >= 4)
{max_button_count-=4}
else{max_button_count = 0}

if instance_exists(obj_buildings_inside_menu_buttons)
{
	with(obj_buildings_inside_menu_buttons)
	{
		y = obj_camera.y - 100 + (number*64) - other.value * 64 * (other.max_button_count);
	}
}