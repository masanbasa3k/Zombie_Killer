draw_set_font(fnt_text);

if (hand_slot)
{
	if (obj_item_manager.inventoryIsOpen)
	{
		image_xscale = 0.5
		image_yscale = 0.5
		if (hovering)
		{draw_sprite_ext(spr_inventory_slot,0,x,y,0.5,0.5,0,c_yellow,1)}
		else{draw_sprite_ext(spr_inventory_slot,0,x,y,0.5,0.5,0,c_white,1)}
	
		if (item_type != -1)
		{
			if (clicked)
			{draw_sprite_ext(item_spr,0,mouse_x,mouse_y,1,1,0,c_white,1)}
			else
			{draw_sprite_ext(item_spr,0,x+12,y+12,1,1,0,c_white,1)}
			if !(obj_item_manager.isWeapon[item_type])
	
			{draw_text_transformed(x+16,y+12,item_count,1,1,0)}
		}
	}
	else
	{
		image_xscale = 1
		image_yscale = 1
		if (hovering)
		{draw_sprite_ext(spr_inventory_slot,0,x,y,1,1,0,c_yellow,1)}
		else{draw_sprite_ext(spr_inventory_slot,0,x,y,1,1,0,c_white,1)}
	
		if (item_type != -1)
		{
			if (clicked)
			{draw_sprite_ext(item_spr,0,mouse_x,mouse_y,1,1,0,c_white,1)}
			else
			{draw_sprite_ext(item_spr,0,x+24,y+24,1,1,0,c_white,1)}
			if !(obj_item_manager.isWeapon[item_type])
	
			{draw_text_transformed(x+32,y+24,item_count,1,1,0)}
		}
	}
}
else{
	image_xscale = 0.5
	image_yscale = 0.5

	if (!obj_item_manager.inventoryIsOpen){exit;}
	
	if (hovering)
	{
		draw_sprite_ext(spr_inventory_slot,0,x,y,0.5,0.5,0,c_yellow,1)
	}
	else
	{
		draw_sprite_ext(spr_inventory_slot,0,x,y,0.5,0.5,0,c_white,1)
	}

	if (item_type != -1)
	{
		if (clicked)
		{draw_sprite_ext(item_spr,0,mouse_x,mouse_y,1,1,0,c_white,1)}
		else
		{draw_sprite_ext(item_spr,0,x+12,y+12,1,1,0,c_white,1)}
		if !(obj_item_manager.isWeapon[item_type])
	
		{draw_text_transformed(x+16,y+12,item_count,1,1,0)}
	}
}