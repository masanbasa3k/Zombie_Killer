if (!global.MenuOpen)
{exit;}

draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

if (hovering)
{image_index=1}
else
{image_index=0}

if (type == "Inventory")
{
	image_xscale = 2;
	image_yscale = 1;
	draw_sprite(spr_inventory_button,image_index,x,y)

}

if (type == "Building")
{
	image_xscale = 2;
	image_yscale = 1;
	draw_sprite(spr_buildings_button,image_index,x,y)

}

if (type == "Settings")
{
	image_xscale = 2;
	image_yscale = 1;
	draw_sprite(spr_settings_button,image_index,x,y)

}