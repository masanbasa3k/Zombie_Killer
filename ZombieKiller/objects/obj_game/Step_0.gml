/// @description Insert description here
// You can write your code in this editor

if (global.player_xp >= global.max_xp_count)
{
	global.player_xp = global.player_xp - global.max_xp_count;
	global.max_xp_count = round(global.max_xp_count*1.5);
	global.player_has_level += 1;
}

if (global.MenuOpen == false)
{
	global.inventoryMenu = false;
	global.buildingMenu = false;
	global.settingsMenu = false;
	global.levelUpMenu = false;
	if (instance_exists(obj_player))
	{
		obj_player.state = scr_player_state_free;
	}
}

if ((keyboard_check_pressed(vk_tab)) || (keyboard_check_pressed(vk_escape))) && (!instance_exists(obj_buildings_inside_menu))
{
	global.MenuOpen = !global.MenuOpen;
	global.inventoryMenu = true;
	if (instance_exists(obj_player))
	{
		obj_player.state = scr_player_state_locked;
	}
}

if (instance_exists(obj_player))
{
	global.player_x = obj_player.x;
	global.player_y = obj_player.y;
}

if (global.settingsMenu == true) && (global.save_button == false)
{
	with (instance_create_layer(0,0,layer,obj_button)){type = "SaveButton"}
	global.save_button = true;
}

if (global.settingsMenu == true) && (global.load_button == false)
{
	with (instance_create_layer(0,0,layer,obj_button)){type = "LoadButton"}
	global.load_button = true;
}