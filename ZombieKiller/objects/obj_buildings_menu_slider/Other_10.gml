

if instance_exists(obj_buildings_buttons)
{
	with(obj_buildings_buttons)
	{
		y = obj_camera.y - 116 + (building_number*64) - other.value * 64 * (other.max_button_count);
	}
}