draw_self()

if(hovering)
{
	image_index = 1;
	draw_text_color(x+48,y+20,"PLAY",c_red,c_red,c_red,c_red,1)
}
else
{
	draw_text_color(x+48,y+16,"PLAY",c_red,c_red,c_red,c_red,1)
	image_index = 0;
}
