if (type == -1){instance_destroy()}
if (!global.MenuOpen)
{exit;}
hovering = position_meeting(mouse_x, mouse_y, self);


y = (obj_camera.y - (RESOLUTION_H/2) + 16);

if (type == "Inventory")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((1)*100));
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = true;
		global.buildingMenu = false;
		global.settingsMenu = false;
	}
}

if (type == "Building")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((2)*100));
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = false;
		global.buildingMenu = true;
		global.settingsMenu = false;
	}
}

if (type == "Settings")
{
	x = (obj_camera.x - (RESOLUTION_W/2) + ((3)*100));
	
	if (hovering) && (mouse_check_button_pressed(mb_left))
	{
		global.inventoryMenu = false;
		global.buildingMenu = false;
		global.settingsMenu = true;
	}
}

