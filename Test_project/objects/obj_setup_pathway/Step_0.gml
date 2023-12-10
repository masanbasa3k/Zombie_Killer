if (old_room_h != room_height) || (old_room_w != room_width)
{
	old_room_w = room_width;
	old_room_h = room_height;
	grid = mp_grid_create(0,0,room_width/16,room_height/16,16,16);
}

mp_grid_clear_all(grid)
mp_grid_add_instances(grid, par_entity, 0);

