


if (is_ranged_true == false)
{
	x = obj_player.x - obj_player.image_xscale * 4;
	y = obj_player.y - 16;
	rotation = lerp(rotation, 45, 0.1);

	image_angle = rotation * obj_player.image_xscale;

	if (cooldown>0){cooldown--;}
}
else
{
	if (mouse_check_button_pressed(mb_right)){holdingAim=true;}
	if (mouse_check_button_released(mb_right)){holdingAim=false;}

	if (holdingAim)
	{
		x = obj_player.x + obj_player.image_xscale * 6;
		y = obj_player.y - 36;
		image_angle = point_direction(x,y,mouse_x,mouse_y);
		direction = image_angle;
		if (direction > 90) && (direction < 270)
		{
			image_yscale = -1;
		}
		else
		{
			image_yscale = 1;
		}
	}
	else
	{
		if (obj_player.image_xscale < 0){image_angle = 225;image_yscale = -1;}
		else{image_angle = -45;image_yscale = 1;}
	}
}

sprite_index = handSprite[state];




