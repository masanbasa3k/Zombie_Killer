/// @description Insert description here
// You can write your code in this editor

if (obj_player.x < -1)
{
	global.gamePaused = !global.gamePaused;
	
	if (global.gamePaused)
	{
		show_debug_message("GAME PAUSED!")
		with (all)
		{
			gamePausedImageSpeed = image_speed;
			image_speed = 0;
		}
	}
	else
	{
		with (all)
		{
			image_speed = gamePausedImageSpeed;
		}
	}
}

if (global.MenuOpen == false)
{
	global.inventoryMenu = false;
	global.buildingMenu = false;
	global.settingsMenu = false;
	obj_player.state = scr_player_state_free;
}

if ((keyboard_check_pressed(vk_tab)) || (keyboard_check_pressed(vk_escape))) && (!instance_exists(obj_buildings_inside_menu))
{
	global.MenuOpen = !global.MenuOpen;
	global.inventoryMenu = true;
	obj_player.state = scr_player_state_locked;
}