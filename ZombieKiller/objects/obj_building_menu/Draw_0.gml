draw_sprite_stretched(spr_building_menu, 0, x-margin, y-margin, widthFull, heightFull);

var _desc = !(description == -1);
for (var l = 0; l < (optionsCount + _desc); l++)
{
	draw_set_color(c_white);
	if(l == 0) && (_desc)
	{
		draw_text(x,y,description);
	}
	else
	{
		var _str = options[l-_desc][0];
		if (hover == l - _desc)
		{
			draw_set_color(c_yellow);
			_str = hoverMarker+_str;
		}
		draw_text(x,y+l*heightLine,_str);
	}
}