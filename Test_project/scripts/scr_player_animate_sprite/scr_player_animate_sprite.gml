// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_player_animate_sprite(){
	depth = -bbox_bottom;
	if (hSpeed != 0) || (vSpeed != 0)
	{sprite_index = spriteRun;
		direction = inputDirection;}
	else
	{sprite_index = spriteIdle;}
	
	
	
	var _signMouse = sign(mouse_x-x)
	if (_signMouse != 0)
	{
		image_xscale = _signMouse;
		if (sign(hSpeed) == _signMouse) && (hSpeed !=0) {image_speed = 2;}
		else if (sign(hSpeed) != _signMouse) && (hSpeed !=0) {image_speed = -2;}
		else{image_speed = 1;}
	}
}