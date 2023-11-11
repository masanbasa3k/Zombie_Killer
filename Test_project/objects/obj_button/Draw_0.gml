if (!global.MenuOpen)
{exit;}

draw_set_font(fnt_text);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

draw_self();
if (hovering)
{draw_text_ext_transformed_color(x+12,y+12,type,1,20,1,1,0,c_red,c_red,c_red,c_red,1)}
else
{draw_text_transformed(x+12,y+12,type,1,1,0)}


if (type == "Inventory")
{
	image_xscale = 2;
	image_yscale = 1;

}

if (type == "Building")
{
	image_xscale = 2;
	image_yscale = 1;

}

if (type == "Settings")
{
	image_xscale = 2;
	image_yscale = 1;

}