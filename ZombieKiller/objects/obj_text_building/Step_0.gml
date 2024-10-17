lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Target, lerpProgress);

keyUp = keyboard_check_pressed(ord("W"));
keyDown = keyboard_check_pressed(ord("S"));
responseSelected += (keyDown - keyUp);
var _max = array_length_1d(responses)-1;
var _min = 0;
if (responseSelected > _max) responseSelected = _min;
if (responseSelected < _min) responseSelected = _max;


if keyboard_check_pressed(vk_space)
{

	if (responses[0] != -1)
	{
		with (originInstance)
		{
			if (other.responseSelected != 2)
			{
				scr_building_select_response(other.responseScripts[other.responseSelected], other.itemlistNuber)
			}
			else
			{
				instance_destroy(other);
				with (obj_player) {state = last_state;}
			}
		}	
	}
		
		
	
		
	
}