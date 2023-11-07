if (!obj_item_manager.inventoryIsOpen){exit;}

if (hovering)
{draw_sprite_ext(spr_inventory_slot,0,x,y,1,1,5,c_white,1)}
else{draw_sprite(spr_inventory_slot,0,x,y)}


if (item_type != -1)
{
	if (clicked)
	{draw_sprite(item_spr,0,mouse_x,mouse_y)}
	else
	{
	draw_sprite(item_spr,0,x+24,y+24)
	}
	draw_text(x+32,y+24,item_count)
}



