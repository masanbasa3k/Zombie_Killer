if (type == -1){instance_destroy()}
if (!global.MenuOpen)
{exit;}
hovering = position_meeting(mouse_x, mouse_y, self);




if (type == "Inventory")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((1)*100));
	y = (obj_camera.y - (RESOLUTION_H/2) + 16);
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = true;
		global.buildingMenu = false;
		global.levelUpMenu = false;
		global.settingsMenu = false;
	}
}

if (type == "Building")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((2)*100)) + 8;
	y = (obj_camera.y - (RESOLUTION_H/2) + 16);
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = false;
		global.buildingMenu = true;
		global.levelUpMenu = false;
		global.settingsMenu = false;
	}
}

if (type == "LevelUp")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((3)*100)) + 16;
	y = (obj_camera.y - (RESOLUTION_H/2) + 16);
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = false;
		global.buildingMenu = false;
		global.levelUpMenu = true;
		global.settingsMenu = false;
	}
}

if (type == "Settings")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((4)*100)) + 24;
	y = (obj_camera.y - (RESOLUTION_H/2) + 16);
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = false;
		global.buildingMenu = false;
		global.levelUpMenu = false;
		global.settingsMenu = true;
	}
}

if (type == "SaveButton")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((1)*100));
	y = (obj_camera.y - (RESOLUTION_H/2) + 128);
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		scr_save_game();
	}
	
	if (global.settingsMenu == false)
	{
		global.save_button = false;
		instance_destroy();
	}
}

if (type == "LoadButton")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((2)*100));
	y = (obj_camera.y - (RESOLUTION_H/2) + 128);
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		scr_load_game(global.game_save_slot);
	}
	
	if (global.settingsMenu == false)
	{
		global.load_button = false;
		instance_destroy();
	}
}


