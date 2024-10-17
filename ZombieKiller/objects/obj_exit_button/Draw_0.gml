draw_self()

if(hovering)
{
	image_index = 1;
	draw_text_color(x+48,y+20,"EXIT",c_red,c_red,c_red,c_red,1)
}
else
{
	draw_text_color(x+48,y+16,"EXIT",c_red,c_red,c_red,c_red,1)
	image_index = 0;
}


